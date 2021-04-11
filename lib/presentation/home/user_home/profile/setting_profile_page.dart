import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:i_love_iruka/domain/user/user_req_res_data_model.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';
import 'package:i_love_iruka/util/constants.dart';
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
  File image;

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
    _phoneNumber =
        TextEditingController(text: _userController.getUserData().phoneNumber);
  }

  void updateProfileBloc(BuildContext context, String imagePath) {
    request = UserRequestDataModel(
        fullName: _name.text,
        imageUrl: imagePath,
        phoneNumber: _phoneNumber.text);
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
                            updateProfileBloc(context, path);
                          },
                        ));
              },
              onProfileDataUpdated: (updated) {
                updated.response.fold(
                  () => print("None"),
                  (a) => a.fold(
                    (l) => showBasicFlash(context, l.error),
                    (r) {
                      //update data on storage.
                      UserDataModel _storage = Pref().getUserData;
                      final _dataCopy = _storage.copyWith(
                          fullName: r.fullName,
                          phoneNumber: r.phoneNumber,
                          imageUrl: r.imageUrl);
                      Pref().saveUserData(_dataCopy);
                      _userController.setDataUser(_dataCopy);
                      showBasicFlash(context, "Change User Data Successful");
                    },
                  ),
                );
              });
        }, builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text("Edit Profile"),
              actions: [
                TextButton(
                    onPressed: () {
                      if (image == null) {
                        updateProfileBloc(
                            context, _userController.getUserData().imageUrl);
                      } else {
                        context
                            .read<UserBloc>()
                            .add(UserEvent.changeProfilePhoto(image.path));
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
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            padding: EdgeInsets.all(10),
                            child: (image == null &&
                                    _userController.getUserData().imageUrl ==
                                        null)
                                ? Image.asset("images/assets/placeholder.png")
                                : null,
                            decoration: BoxDecoration(
                              image: ((image == null) &&
                                      _userController.getUserData().imageUrl ==
                                          null)
                                  ? null
                                  : (image != null)
                                      ? DecorationImage(
                                          image: FileImage(
                                            image,
                                          ),
                                          fit: BoxFit.cover)
                                      : DecorationImage(
                                          image: NetworkImage(
                                              Constants.getStagingUrl() +
                                                  _userController
                                                      .getUserData()
                                                      .imageUrl),
                                          fit: BoxFit.cover),
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
                  ],
                ),
              ),
            ),
          );
        }));
  }
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
