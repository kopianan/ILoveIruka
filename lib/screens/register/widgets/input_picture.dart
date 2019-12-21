
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/camera_util.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';
import 'package:provider/provider.dart';

import '../register_additional.dart';

class InputPicture extends StatefulWidget {
  const InputPicture({
    Key key,
    @required RegisterAdditional registerAdditional,
    @required this.c,
  }) : _registerAdditional = registerAdditional, super(key: key);

  final RegisterAdditional _registerAdditional;
  final ScrollController c;

  @override
  _InputPictureState createState() => _InputPictureState();
}

class _InputPictureState extends State<InputPicture> {
  File photo ; 
  @override
  Widget build(BuildContext context) {
    return KeyboardAvoider(
      child: Consumer<DataBridge>(
              builder:(_, dataBridge, __) => Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hi, \nPlease Add Your Photo",
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.grey[300],
                      child: (photo == null)
                          ? Icon(
                              Icons.image,
                              size: 80,
                            )
                          : Image.file(
                             photo,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Color(0xffd45500),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Take Photo",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      bool takePhotoSource = false;
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Choose Action Photo"),
                              content: Text(
                                  "Please choose action to take pictrue"),
                              actions: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    takePhotoSource = true;
                                    CameraUtil()
                                        .takePicture(
                                            fromCamera: takePhotoSource)
                                        .then((onValue) {
                                      setState(() {
                                        photo= File(onValue.toString());
                                      });
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text("Camera"),
                                ),
                                FlatButton(
                                  onPressed: () {
                                    takePhotoSource = false;
                                    CameraUtil()
                                        .takePicture(
                                            fromCamera: takePhotoSource)
                                        .then((onValue) {
                                      setState(() {
                                        photo = File(onValue.toString());
                                      });
                                    });

                                    Navigator.pop(context);
                                  },
                                  child: Text("Gallery"),
                                )
                              ],
                            );
                          });
                    },
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    child: Text("Back"),
                    onPressed: () {
                      int page ; 

                        (dataBridge.getRoleList().name.toString().toLowerCase().contains("groomer")) ? page = 2: page = 1 ; 

                      widget._registerAdditional.backAnimated(context, widget.c, page);
                    },
                  ),
                  Container(
                    width: 150,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        print("register");
                        registerUser(dataBridge);
                      },
                      label: Text("Register"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  
  void registerUser(DataBridge dataBridge) {
    // final dataRegister = RegisterRequest(
    //     accessKey: Constants.getAccessKey(),
    //     address: _addressController.text,
    //     description: _descriptionController.text,
    //     email: _emailController.text,
    //     file: photo.path,
    //     name: _firstNameController.text + _lastNameController.text,
    //     password: _password,
    //     pic: (_picPhoneNumberController.text == null)
    //         ? ""
    //         : _picPhoneNumberController.text.toString(),
    //     phonenumber: _phoneController.text.toString(),
    //     role: dataBridge.getRoleList().id.toString());
    // print(dataRegister.toJson());
    // registerBloc.add(RegisterUser(registerData: dataRegister));
  }
}

