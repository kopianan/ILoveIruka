import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:i_love_iruka/domain/user/user_req_res_data_model.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';
import 'package:i_love_iruka/presentation/widgets/global_widget_method.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/application/user/user_bloc.dart';
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
  int labelFlex = 2;
  int valueFlex = 7;
  double height = 30;
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
                    child: Icon(
                      Icons.check,
                    ))
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    GlobalWidgetMethod.pageTitle("Edit Profile"),
                    SizedBox(height: 40),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        labelText("Photo", labelFlex),
                        Expanded(
                          flex: valueFlex,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(10),
                                  child: (image == null &&
                                          _userController
                                                  .getUserData()
                                                  .imageUrl ==
                                              null)
                                      ? Image.asset(
                                          "images/assets/placeholder.png")
                                      : null,
                                  decoration: BoxDecoration(
                                    image: ((image == null) &&
                                            _userController
                                                    .getUserData()
                                                    .imageUrl ==
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
                                    border: Border.all(
                                        width: 2, color: Colors.white),
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
                                SizedBox(height: 15),
                                InkWell(
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
                                  child: Text(
                                    "Upload Photo",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.blue),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        labelText("Name", labelFlex),
                        ValueTextField(
                          flex: valueFlex,
                          controller: _name,
                          hint: "Name",
                        ),
                      ],
                    ),
                    SizedBox(height: height),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        labelText("Phone", labelFlex),
                        ValueTextField(
                          flex: valueFlex,
                          controller: _phoneNumber,
                          hint: "Phone number / Whatsapp",
                        ),
                      ],
                    ),
                    SizedBox(height: height),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        labelText("Email", labelFlex),
                        ValueTextField(
                          flex: valueFlex,
                          controller: _email,
                          hint: "Email",
                          isEnabled: false,
                        ),
                      ],
                    ),
                    SizedBox(height: height),
                  ],
                ),
              ),
            ),
          );
        }));
  }

  Expanded labelText(String label, int flex) {
    return Expanded(
      flex: flex,
      child: Text(
        label,
        style: TextStyle(
            fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 15),
      ),
    );
  }
}

class ValueTextField extends StatelessWidget {
  const ValueTextField(
      {Key key,
      @required this.hint,
      @required this.controller,
      this.isEnabled = true,
      @required this.flex});
  final String hint;
  final TextEditingController controller;
  final isEnabled;
  final int flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: TextFormField(
        enabled: isEnabled,
        controller: controller,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 5, right: 5, bottom: 6),
            fillColor: Colors.transparent,
            isDense: true,
            border: UnderlineInputBorder(),
            hintText: hint),
      ),
    );
  }
}
