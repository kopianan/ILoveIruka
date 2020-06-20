import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/application/other/other_bloc.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:i_love_iruka/domain/core/value_actions.dart';
import 'package:i_love_iruka/domain/other/raja_ongkir.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/custom_text_field_collection.dart';
import 'package:i_love_iruka/util/flushbar_function.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class AdvancedInformationContent extends StatefulWidget {
  AdvancedInformationContent({Key key}) : super(key: key);

  @override
  _AdvancedInformationContentState createState() =>
      _AdvancedInformationContentState();
}

class Capability {
  final int value;
  final String name;
  Capability({@required this.name, @required this.value});
}

class _AdvancedInformationContentState
    extends State<AdvancedInformationContent> {
  List<RajaOngkir> province = [RajaOngkir(province: "No Province Available")];
  List<RajaOngkir> city = [RajaOngkir(province: "No City Available")];
  TextEditingController _dateController;

  TextEditingController _expYearsController;
  TextEditingController _courseController;
  TextEditingController _yearsController;
  TextEditingController _keyFeaturesController;

  FocusNode _courseFN = FocusNode(canRequestFocus: false);
  FocusNode _yearsFN = FocusNode(canRequestFocus: false);
  FocusNode _keyFeaturesFN = FocusNode(canRequestFocus: false);
  FocusNode _expYearsFN = FocusNode(canRequestFocus: false);

  RajaOngkir selectedProvince = null;
  RajaOngkir selectedCity = null;

  int _clip;
  int _style;
  bool isFirstChanged;
  Flushbar flushbar;

  List<Capability> _stylingItem = [
    Capability(value: 0, name: "Beginner"),
    Capability(value: 1, name: "Good"),
    Capability(value: 2, name: "Excellent"),
    Capability(value: 3, name: "Expert"),
  ];
  List<Capability> _clippingItem = [
    Capability(value: 0, name: "Beginner"),
    Capability(value: 1, name: "Good"),
    Capability(value: 2, name: "Excellent"),
    Capability(value: 3, name: "Expert"),
  ];

  User _currentUser;

  @override
  void initState() {
    isFirstChanged = false;
    //get data from provider and move
    _currentUser = context.read<AuthProvider>().getUserData;
    //fill controller from provider and user data
    _expYearsController =
        TextEditingController(text: _currentUser.yearsOfExperience.toString());
    _dateController = TextEditingController(
        text: DateFormat("dd-MM-yyy")
            .format(DateTime.parse(_currentUser.trainingStartDate)));
    _courseController =
        TextEditingController(text: _currentUser.trainingCourses);
    _yearsController =
        TextEditingController(text: _currentUser.trainingYears.toString());
    _keyFeaturesController =
        TextEditingController(text: _currentUser.keyFeatures);

    //get current styling and clipping from provider
    _clip = _currentUser.clipping;
    _style = _currentUser.styling;

    //Coverage Area
    // _setCoverageArea(_currentUser);

    super.initState();
  }

  void _setProvinceArea(User user) {
    if (user.coverageArea == null) {
      selectedProvince = null;
    } else {
      if (user.coverageArea.split(",").length < 4) {
        selectedProvince = null;
      } else {
        //probably have required data
        final _currentListArea = user.coverageArea.split(",");
        selectedProvince = RajaOngkir(
            province: _currentListArea[0], provinceId: _currentListArea[2]);
      }
    }
  }

  void _setCityArea(User user) {
    if (user.coverageArea == null) {
      selectedCity = null;
    } else {
      if (user.coverageArea.split(",").length < 4) {
        selectedCity = null;
      } else {
        //probably have required data
        final _currentListArea = user.coverageArea.split(",");
        selectedCity = RajaOngkir(
            province: _currentListArea[0],
            cityName: _currentListArea[1],
            provinceId: _currentListArea[2],
            cityId: _currentListArea[3]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, _) => MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  getIt<OtherBloc>()..add(OtherEvent.getProvinceOnly())),
          BlocProvider(create: (context) => getIt<AuthBloc>()),
        ],
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                onProgress: (e) {
                  flushbar = showFlushbarLoading(loading: "Updating Account...")
                    ..show(context);
                },
                failOrSuccessUpdateCustomerOption: (e) {
                  dismissFlushbar(flushbar);
                  e.updateCustomerOption.fold(
                      () => null,
                      (a) => a.fold(
                            (l) => showFlushbarError(
                                errMessage: "Can not update data")
                              ..show(context),
                            (r) {
                              showFlushbarSuccess(
                                  succMessage: "Data Updated Successfull")
                                ..show(context);
                              r.map(
                                  loginRequestData: (e) {},
                                  loginResponseData: (resp) {
                                    authProvider.setUserData(resp.user);
                                    context.bloc<AuthenticationBloc>().add(
                                        AuthenticationEvent.saveAuthentication(
                                            r: resp.user));
                                  });
                            },
                          ));
                },
                changeAvailability: (e) => e.availabilityOption.fold(
                    () => {},
                    (a) => a.fold(
                          (l) => Fluttertoast.showToast(
                              msg: "Availability Not Changed"),
                          (r) {
                            Fluttertoast.showToast(msg: "Availability Changed");
                            final _current =
                                authProvider.getUserData.availability;
                            final _updated = authProvider.getUserData
                                .copyWith(availability: !_current);
                            authProvider.setUserData(_updated);
                          },
                        )));
          },
          child:
              BlocConsumer<OtherBloc, OtherState>(listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                getProvinceOption: (e) {
                  e.getProvinceOption.fold(
                      () => () {},
                      (a) => a.fold((l) => print(l), (r) {
                            setState(() {
                              province = r;
                              if (isFirstChanged == false) {
                                _setProvinceArea(authProvider.getUserData);
                                context.bloc<OtherBloc>().add(
                                    OtherEvent.getCityOnly(
                                        provinceId:
                                            selectedProvince.provinceId));
                              }
                            });
                          }));
                },
                getCityOption: (e) {
                  e.getCityOption.fold(
                      () => () {},
                      (a) => a.fold(
                            (l) => print(l.toString()),
                            (r) {
                              setState(() {
                                city = r;
                                if (isFirstChanged == false) {
                                  _setCityArea(authProvider.getUserData);
                                }
                              });
                            },
                          ));
                });
          }, builder: (context, state) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              child: ListView(
                children: <Widget>[
                  SwitchListTile(
                    value: authProvider.getUserData.availability,
                    onChanged: (val) {
                      context.bloc<AuthBloc>().add(
                          AuthEvent.changeGroomerAvailability(
                              id: authProvider.getUserData.id,
                              isAvailable:
                                  !authProvider.getUserData.availability));
                    },
                    title: Text("Is Available"),
                    subtitle: Text("Is Groomer available ?"),
                  ),
                  Card(
                      margin: EdgeInsets.all(10),
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Form(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Experience Information",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Styling",
                                      style: TextStyle(
                                        color: Colors.blue,
                                      )),
                                  DropdownButton(
                                    underline: Divider(
                                      thickness: 2,
                                      height: 2,
                                    ),
                                    hint: Text(
                                      "Styling Experience",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    isExpanded: true,
                                    items: _stylingItem
                                        .map((f) => DropdownMenuItem(
                                              child: Text(f.name),
                                              value: f,
                                            ))
                                        .toList(),
                                    value: _stylingItem[_style],
                                    onChanged: (Capability val) {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      setState(() {
                                        _style = val.value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Clipping",
                                      style: TextStyle(
                                        color: Colors.blue,
                                      )),
                                  DropdownButton(
                                    underline: Divider(thickness: 2, height: 2),
                                    hint: Text("Clipping Experience",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    isExpanded: true,
                                    items: _clippingItem
                                        .map((f) => DropdownMenuItem(
                                            child: Text(f.name), value: f))
                                        .toList(),
                                    value: _clippingItem[_clip],
                                    onChanged: (Capability val) {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      setState(() {
                                        _clip = val.value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Province",
                                      style: TextStyle(
                                        color: Colors.blue,
                                      )),
                                  DropdownButton(
                                    underline: Divider(thickness: 2, height: 2),
                                    icon: state.maybeMap(
                                        orElse: () =>
                                            Icon(Icons.arrow_drop_down),
                                        getProvinceOption: (e) {
                                          if (e.isLoading) {
                                            return CircularProgressIndicator();
                                          } else {
                                            return Icon(Icons.arrow_drop_down);
                                          }
                                        }),
                                    hint: Text("Your Province",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    isExpanded: true,
                                    items: province
                                        .map((f) => DropdownMenuItem(
                                            child: Text(f.province), value: f))
                                        .toList(),
                                    value: selectedProvince,
                                    onChanged: (RajaOngkir val) {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      setState(() {
                                        isFirstChanged = true;
                                        selectedProvince = val;
                                        selectedCity = null;
                                        context.bloc<OtherBloc>().add(
                                            OtherEvent.getCityOnly(
                                                provinceId: val.provinceId));
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("City",
                                      style: TextStyle(
                                        color: Colors.blue,
                                      )),
                                  DropdownButton(
                                    icon: state.maybeMap(
                                        orElse: () =>
                                            Icon(Icons.arrow_drop_down),
                                        getProvinceOption: (e) {
                                          if (e.isLoading) {
                                            return CircularProgressIndicator();
                                          } else {
                                            return Icon(Icons.arrow_drop_down);
                                          }
                                        }),
                                    underline: Divider(thickness: 2, height: 2),
                                    hint: Text("Your City",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    isExpanded: true,
                                    items: city
                                        .map((f) => DropdownMenuItem(
                                            child: Text(f.cityName.toString()),
                                            value: f))
                                        .toList(),
                                    value: selectedCity,
                                    onChanged: (RajaOngkir val) {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      setState(() {
                                        isFirstChanged = true;
                                        selectedCity = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              CustomTextField(
                                controller: _expYearsController,
                                focusNode: _expYearsFN,
                                hint: "Years of Experience",
                                label: "Experience",
                                isEnable: true,
                                onFieldSubmited: (e) {
                                  fieldFocusChange(
                                      context, _expYearsFN, _keyFeaturesFN);
                                },
                                textInputType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                suffixText: "Years",
                                validator: (val) {},
                              ),
                              SizedBox(height: 10),
                              CustomTextField(
                                controller: _keyFeaturesController,
                                focusNode: _keyFeaturesFN,
                                hint: "List Of your features",
                                label: "Key Features",
                                isEnable: true,
                                minLength: 3,
                                onFieldSubmited: (e) {
                                  _keyFeaturesFN.unfocus();
                                },
                                textInputAction: TextInputAction.done,
                                validator: (val) {},
                              ),
                            ],
                          )))),
                  Card(
                      margin: EdgeInsets.all(10),
                      child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Training Information",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                style: TextStyle(letterSpacing: 1),
                                controller: _dateController,
                                enableInteractiveSelection: false,
                                focusNode: FocusNode(),
                                minLines: 1,
                                readOnly: true,
                                onTap: () {
                                  DatePicker.showDatePicker(context,
                                      showTitleActions: true,
                                      minTime: DateTime(1800, 1, 1),
                                      maxTime: DateTime.now(),
                                      onConfirm: (date) {
                                    _dateController.text =
                                        DateFormat("dd-MM-yyyy").format(date);
                                  },
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.id);
                                },
                                decoration: _inputeTextDecoration(
                                    "Your start date on training",
                                    "Training date"),
                              ),
                              SizedBox(height: 10),
                              CustomTextField(
                                controller: _yearsController,
                                focusNode: _yearsFN,
                                hint: "Total Years of your training",
                                label: "Total Years",
                                isEnable: true,
                                onFieldSubmited: (e) {
                                  fieldFocusChange(
                                      context, _yearsFN, _courseFN);
                                },
                                textInputType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                suffixText: "Years",
                                validator: (val) {},
                              ),
                              SizedBox(height: 10),
                              CustomTextField(
                                controller: _courseController,
                                focusNode: _courseFN,
                                hint: "Your training courses",
                                label: "Course",
                                minLength: 3,
                                isEnable: true,
                                onFieldSubmited: (e) {
                                  _courseFN.unfocus();
                                },
                                textInputAction: TextInputAction.done,
                                validator: (val) {},
                              ),
                            ],
                          ))),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => btnSaveGroomer(authProvider, context),
                        onProgress: (e) => BtnPrimaryBlueLoading(),
                        failOrSuccessUpdateCustomerOption: (value) =>
                            value.updateCustomerOption.fold(
                                () => BtnPrimaryBlueLoading(),
                                (a) => btnSaveGroomer(authProvider, context)),
                      );
                    }),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  BtnPrimaryBlue btnSaveGroomer(
      AuthProvider authProvider, BuildContext context) {
    return BtnPrimaryBlue(
        text: "Save",
        onPressed: () {
          final _coverageArea =
              "${selectedProvince.province},${selectedCity.cityName},${selectedProvince.provinceId},${selectedCity.cityId}";

          final _updated = authProvider.getUserData.copyWith(
              styling: _style,
              clipping: _clip,
              yearsOfExperience: (_expYearsController.text == null)
                  ? 0
                  : int.parse(_expYearsController.text),
              keyFeatures: _keyFeaturesController.text,
              trainingStartDate: _dateController.text,
              trainingYears: (_yearsController.text == null)
                  ? 0
                  : int.parse(_yearsController.text),
              trainingCourses: _courseController.text,
              coverageArea: _coverageArea,
              accessKey: "d78c1a5c-ccbe-4c26-ac08-43ed66c8afb9");
          context.bloc<AuthBloc>().add(AuthEvent.updateGroomer(user: _updated));
        });
  }

  InputDecoration _inputeTextDecoration(String label, String hint) {
    return InputDecoration(
        labelText: label,
        contentPadding: EdgeInsets.only(bottom: 1),
        isDense: true,
        suffixIcon: Icon(MdiIcons.calendar),
        hintText: hint,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        errorMaxLines: 1,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2)),
        border: UnderlineInputBorder());
  }
}
