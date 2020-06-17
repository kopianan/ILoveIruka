import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:i_love_iruka/domain/core/value_actions.dart';
import 'package:i_love_iruka/domain/core/value_validators.dart';
import 'package:i_love_iruka/infrastructure/auth/update_data.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/custom_text_field_collection.dart';
import 'package:i_love_iruka/util/flushbar_function.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);

    super.initState();
  }

  Flushbar flushbar;
  String msg;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProv, _) => BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              failOrSuccessUpdateCustomerOption: (e) =>
                  e.updateCustomerOption.fold(
                      () => () {},
                      (a) => a.fold(
                            (l) {
                              l.map(
                                badRequest: (e) => msg = "Wrong Input",
                                serverError: (e) => msg = "Server Error",
                                notFound: (e) => msg = "Something Wrong",
                                defaultError: (e) =>
                                    msg = "Check your internet connection",
                              );
                              showFlushbarError(errMessage: msg)..show(context);
                            },
                            (r) {
                              showFlushbarSuccess(
                                  succMessage: "Profile Successful Updated")
                                ..show(context);
                              r.map(
                                loginRequestData: (e) {},
                                loginResponseData: (e) {
                                  authProv.setUserData(e.user);
                                  context.bloc<AuthenticationBloc>().add(
                                      AuthenticationEvent.saveAuthentication(
                                          r: e.user));
                                },
                              );
                            },
                          )),
            );
          },
          child: Scaffold(
            body: GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);

                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * .2,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff54A3F1),
                                Color(0xff54A3F1),
                                Color(0xff2E6EAE)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                      SafeArea(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 25,
                                  ),
                                  alignment: Alignment.topLeft,
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                child: Text(
                                  "Profile Page",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                alignment: Alignment.topCenter,
                              )),
                              Expanded(
                                  child: Container(
                                // child: Icon(Icons.arrow_back),
                                alignment: Alignment.topRight,
                              )),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * .28,
                          child: Container(
                              width: double.infinity,
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 120,
                                height: 120,
                                alignment: Alignment.bottomRight,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xff7c94b6),
                                    image: new DecorationImage(
                                      image: new ExactAssetImage(
                                          'images/assets/image_placeholder.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    border: new Border.all(
                                      color: Colors.white,
                                      width: 4.0,
                                    )),
                                child: Icon(Icons.perm_contact_calendar),
                              )))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .28),
                    child: Column(
                      children: <Widget>[
                        Card(
                            child: TabBar(
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                controller: _tabController,
                                tabs: [
                              Tab(
                                text: "Personal Information",
                              ),
                              Tab(text: "Advanced Information")
                            ])),
                        Expanded(
                          child: TabBarView(
                            children: [
                              PersonalInformationContent(),
                              Center(child: new Text("Coming Soon")),
                            ],
                            controller: _tabController,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PersonalInformationContent extends StatefulWidget {
  const PersonalInformationContent({
    Key key,
  }) : super(key: key);

  @override
  _PersonalInformationContentState createState() =>
      _PersonalInformationContentState();
}

class _PersonalInformationContentState
    extends State<PersonalInformationContent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  TextEditingController _fullNameCon;
  TextEditingController _phoneNumberCon;
  TextEditingController _addressCon;
  TextEditingController _emailCon;

  final _fullNameFN = FocusNode();
  final _phoneNumberFN = FocusNode();
  final _addressFN = FocusNode();
  User user;
  @override
  void initState() {
    user = context.read<AuthProvider>().getUserData;
    _fullNameCon = TextEditingController(text: user.name);
    _phoneNumberCon = TextEditingController(text: user.phoneNumber);
    _addressCon = TextEditingController(text: user.address);
    _emailCon = TextEditingController(text: user.email);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: Column(
                children: <Widget>[
                  CustomTextField(
                    controller: _fullNameCon,
                    focusNode: _fullNameFN,
                    hint: "Your Fullname",
                    label: "Fullname",
                    isEnable: true,
                    onFieldSubmited: (e) {
                      fieldFocusChange(context, _fullNameFN, _phoneNumberFN);
                    },
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      return validateInputTextField(3, val);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: _phoneNumberCon,
                    focusNode: _phoneNumberFN,
                    hint: "Input Your Phone Number",
                    label: "Phone Number",
                    isEnable: true,
                    onFieldSubmited: (e) {
                      fieldFocusChange(context, _phoneNumberFN, _addressFN);
                    },
                    textInputAction: TextInputAction.next,
                    validator: (val) {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: _emailCon,
                    focusNode: null,
                    hint: "Your Email",
                    label: "Email",
                    isEnable: false,
                    onFieldSubmited: (e) {},
                    textInputAction: TextInputAction.next,
                    validator: (val) {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: _addressCon,
                    focusNode: _addressFN,
                    hint: "Input Your Address",
                    label: "Address",
                    isEnable: true,
                    onFieldSubmited: (e) {
                      _addressFN.unfocus();
                    },
                    textInputAction: TextInputAction.next,
                    validator: (val) {},
                  ),
                  SizedBox(height: 20),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return state.maybeMap(
                          orElse: () => buildSaveButton(context),
                          onProgress: (e) => BtnPrimaryBlueLoading(),
                          failOrSuccessUpdateCustomerOption: (e) =>
                              buildSaveButton(context));
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  BtnPrimaryBlue buildSaveButton(BuildContext context) {
    return BtnPrimaryBlue(
      text: "Save",
      onPressed: () {
        _validateInputs(context);
      },
    );
  }

  void _validateInputs(BuildContext context) {
    if (_formKey.currentState.validate()) {
      final updatedData = UpdateCustomerData(
        accessKey: "d78c1a5c-ccbe-4c26-ac08-43ed66c8afb9",
        address: _addressCon.text,
        email: _emailCon.text,
        id: user.id,
        name: _fullNameCon.text,
        phoneNumber: _phoneNumberCon.text,
      );
      context.bloc<AuthBloc>().add(AuthEvent.updateCustomer(data: updatedData));
      _formKey.currentState.save();
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}
