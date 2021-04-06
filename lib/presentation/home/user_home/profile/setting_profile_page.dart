import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/domain/user/user_req_res_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';
import 'package:image_picker/image_picker.dart';

import 'package:i_love_iruka/application/address/cubit/address_cubit.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/application/user/user_bloc.dart';
import 'package:i_love_iruka/domain/address/address_data_model.dart';
import 'package:i_love_iruka/domain/address/province_data_model.dart';

import 'package:i_love_iruka/infrastructure/functions/custom_functions.dart';

import '../../../../injection.dart';

class SettingProfielPage extends StatefulWidget {
  static final String TAG = "/setting_profile_page";
  @override
  _SettingProfielPageState createState() => _SettingProfielPageState();
}

class _SettingProfielPageState extends State<SettingProfielPage> {
  ProvinceDataModel selectedProvince;
  AddressDataModel selectedCity;
  File image;

  List<AddressDataModel> cityList = [];
  List<ProvinceDataModel> provinceList = [];
  final cityCubit = AddressCubit();
  final provinceCubit = AddressCubit();
  final _userController = Get.put(UserController());

  TextEditingController _name;
  TextEditingController _phoneNumber;
  TextEditingController _email;
  UserRequestDataModel request;
  @override
  void initState() {
    fillTextFieldFromController();
    super.initState();
  }

  void fillTextFieldFromController() {
    _name = TextEditingController(text: _userController.getUserData().fullName);
    _email = TextEditingController(text: _userController.getUserData().email);
    _phoneNumber = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    selectedProvince = null;
    super.didChangeDependencies();
  }

  void updateProfileBloc(BuildContext context) {
    request = UserRequestDataModel(
        fullName: _name.text, imageUrl: path, phoneNumber: _phoneNumber.text);
    //UPDATING DATA WITH PHOTO
    context.read<UserBloc>().add(UserEvent.updateProfileData(request));
  }

  String path;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<UserBloc>(),
        child: BlocConsumer<UserBloc, UserState>(listener: (context, state) {
          // TODO: implement listener

          state.maybeMap(
              orElse: () {},
              initial: (e) {
                print("initail");
              },
              uploadProfilePhoto: (e) {
                e.response.fold(
                    () => print("None"),
                    (a) => a.fold(
                          (l) => showBasicFlash(context, l.error),
                          (r) {
                            //after finish upload photo, change user user data
                            path = r;
                            updateProfileBloc(context);
                          },
                        ));
              },
              onProfileDataUpdated: (updated) {
                updated.response.fold(
                  () => print("None"),
                  (a) => a.fold(
                    (l) => showBasicFlash(context, l.error),
                    (r) {
                      print(r);
                      showSuccessFlash(context, "Successful edit data user");
                    },
                  ),
                );
              });
        }, builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text("Edit Profile"),
              actions: [
                TextButton(
                    onPressed: () {
                      //TODO : Save the image to server.

                      if (path == null) {
                        context
                            .read<UserBloc>()
                            .add(UserEvent.changeProfilePhoto(image.path));
                      } else {
                        updateProfileBloc(context);
                      }
                    },
                    child: Text("Save"))
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            padding: EdgeInsets.all(10),
                            child: (image == null)
                                ? Image.asset("images/assets/placeholder.png")
                                : null,
                            decoration: BoxDecoration(
                              image: (image != null)
                                  ? DecorationImage(
                                      image: FileImage(
                                        image,
                                      ),
                                      fit: BoxFit.cover)
                                  : null,
                              border: Border.all(width: 2, color: Colors.white),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    offset: Offset(3, 3))
                              ],
                              shape: BoxShape.circle,
                              color: Colors.blue[300],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: InkWell(
                              onTap: () async {
                                try {
                                  image = await getImageFromPhone(
                                      ImageSource.gallery);
                                  setState(() {});
                                } catch (e) {
                                  Fluttertoast.showToast(
                                      msg: "Something wrong");
                                }
                              },
                              child: Container(
                                child: Icon(
                                  Icons.edit,
                                  size: 20,
                                ),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ProfileCustomFormField(
                      label: "Name",
                      hint: "Name",
                      controller: _name,
                    ),
                    SizedBox(height: 20),
                    ProfileCustomFormField(
                      label: "Email",
                      hint: "Email",
                      controller: _email,
                      isEnabled: false,
                    ),
                    SizedBox(height: 20),
                    ProfileCustomFormField(
                      label: "Phone Number",
                      controller: _phoneNumber,
                      hint: "Phone number / Whatsapp",
                    ),
                    SizedBox(height: 20),
                    // BlocProvider(
                    //   create: (context) => provinceCubit..getProvince(),
                    //   child: BlocConsumer<AddressCubit, AddressState>(
                    //     listener: (context, state) {
                    //       state.maybeMap(
                    //         orElse: () {},
                    //         loading: (e) => print("Loading"),
                    //         error: (e) => print("errsdfsdfor"),
                    //         getProvince: (e) {
                    //           provinceList = e.data;
                    //           selectedProvince = provinceList.first;
                    //           cityCubit.getCity(provinceList.first.provinceId);
                    //         },
                    //       );
                    //     },
                    //     builder: (context, state) {
                    //       return state.maybeMap(
                    //           orElse: () => defaultDropDown(),
                    //           loading: (e) => loadingDropDown(),
                    //           error: (e) => errorDropDown(),
                    //           getProvince: (e) => DropdownButtonFormField(
                    //                 decoration: dropDownDecoration(),
                    //                 items: (provinceList == null)
                    //                     ? []
                    //                     : provinceList
                    //                         .map((province) => DropdownMenuItem(
                    //                             child: Text(province.province),
                    //                             value: province))
                    //                         .toList(),
                    //                 value: (provinceList == null)
                    //                     ? null
                    //                     : selectedProvince,
                    //                 onTap: () {},
                    //                 onChanged: (newData) {
                    //                   setState(() {
                    //                     selectedProvince = newData;
                    //                     cityCubit.getCity(
                    //                         selectedProvince.provinceId);
                    //                   });
                    //                 },
                    //               ));
                    //     },
                    //   ),
                    // ),
                    // BlocProvider(
                    //   create: (context) => cityCubit,
                    //   child: BlocConsumer<AddressCubit, AddressState>(
                    //     listener: (context, state) {
                    //       state.maybeMap(
                    //         orElse: () {},
                    //         error: (e) => showBasicFlash(context, e.toString()),
                    //         getCity: (e) {
                    //           cityList = e.data;
                    //           selectedCity = cityList.first;
                    //         },
                    //       );
                    //     },
                    //     builder: (context, state) {
                    //       return state.maybeMap(
                    //           orElse: () => defaultDropDown(),
                    //           loading: (e) => loadingDropDown(),
                    //           error: (e) => errorDropDown(),
                    //           getCity: (e) => DropdownButtonFormField(
                    //                 decoration: dropDownDecoration(),
                    //                 items: cityList
                    //                     .map((val) => DropdownMenuItem(
                    //                         child: Text(
                    //                             val.type + " " + val.cityName),
                    //                         value: val))
                    //                     .toList(),
                    //                 value: selectedCity,
                    //                 onTap: () {},
                    //                 onChanged: (newData) {},
                    //               ));
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        }));
  }

  DropdownButtonFormField defaultDropDown() => DropdownButtonFormField(
        items: [],
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: "No data..."),
      );

  DropdownButtonFormField loadingDropDown() => DropdownButtonFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: "Getting data..."),
      items: []);

  DropdownButtonFormField errorDropDown() => DropdownButtonFormField(
        items: [],
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: "Error getting data"),
      );

  InputDecoration dropDownDecoration() => InputDecoration(
      border: OutlineInputBorder(), hintText: "Choose location");
}

class ProfileCustomFormField extends StatelessWidget {
  const ProfileCustomFormField(
      {Key key,
      @required this.label,
      @required this.hint,
      @required this.controller,
      this.isEnabled = true});
  final String label;
  final String hint;
  final TextEditingController controller;
  final isEnabled;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        this.label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextFormField(
        enabled: this.isEnabled,
        controller: this.controller,
        decoration:
            InputDecoration(border: OutlineInputBorder(), hintText: this.hint),
      ),
    ]);
  }
}
