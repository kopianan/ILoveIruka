import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_bloc.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_g.dart';
import 'package:i_love_iruka/util/camera_util.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/widgets/color_palate.dart';
import 'package:i_love_iruka/widgets/register_button_next_and_back.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';
import 'package:provider/provider.dart';

import '../register_additional.dart';

class InputPicture extends StatefulWidget {
  const InputPicture({
    Key key,
    @required RegisterAdditional registerAdditional,
    @required this.registerBlocBloc,
    @required this.c,
  })  : _registerAdditional = registerAdditional,
        super(key: key);

  final RegisterAdditional _registerAdditional;
  final ScrollController c;
  final RegisterBlocBloc registerBlocBloc ; 
  @override
  _InputPictureState createState() => _InputPictureState();
}

class _InputPictureState extends State<InputPicture> {
  File photo;
  @override
  Widget build(BuildContext context) {
    return KeyboardAvoider(
      child: Consumer<RegisterProvider>(
        builder: (_, regProv, __) => Consumer<DataBridge>(
          builder: (_, dataBridge, __) => Container(
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
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                                content: Text("Please choose action to take pictrue"),
                                actions: <Widget>[
                                  FlatButton(
                                    onPressed: () {
                                      takePhotoSource = true;
                                      CameraUtil().takePicture(fromCamera: takePhotoSource).then((onValue) {
                                        setState(() {
                                          photo = File(onValue.toString());
                                        });
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Camera"),
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      takePhotoSource = false;
                                      CameraUtil().takePicture(fromCamera: takePhotoSource).then((onValue) {
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RegisterButtonNextAndBack(
                      buttonColor: ColorPalate.blueGradient1,
                      buttonText: "Back",
                      onButtonPressed: () => _onButtonBackPressed(dataBridge),
                    ),
                    RegisterButtonNextAndBack(
                      buttonColor: ColorPalate.darkOrange,
                      buttonText: "Register",
                      onButtonPressed: () => registerUser(dataBridge, regProv, widget.registerBlocBloc),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  void _onButtonBackPressed(DataBridge dataBridge) {
    int page;

    (dataBridge.getRoleList().toString().toLowerCase().contains("groomer")) ? page = 2 : page = 1;

    widget._registerAdditional.backAnimated(context, widget.c, page);
  }

  void registerUser(DataBridge dataBridge, RegisterProvider regProv, RegisterBlocBloc registerBlocBloc) {
    
    var availability;
    var cliping;
    var styling;
    var keyFeatures;
    var trainingCourses;
    var trainingYears;
    var trainingStartDate;
    var yearsOfExperience;
    var area;
    if (dataBridge.getRoleList().toLowerCase() == "groomer") {
      //user is groomer
      availability = regProv.getIsAvailable.toString();
      cliping = int.parse(regProv.getCliping.toStringAsFixed(0)).toString();
      styling = int.parse(regProv.getStyling.toStringAsFixed(0)).toString();
      keyFeatures = regProv.getKeyFeatures.toString();
      trainingCourses = regProv.getTrainLNotes.toString();
      trainingYears = regProv.getTrainLong.toString();
      trainingStartDate = regProv.getTrainDate.toString();
      yearsOfExperience = regProv.getYearExperience.toString();
      area = "${dataBridge.getCityResults.type} ${dataBridge.getCityResults.cityName},${dataBridge.getCityResults.province}";
    } else {
      availability = "0";
      cliping = "0";
      styling = "0";
      keyFeatures = "0";
      trainingCourses = "0";
      trainingYears = "0";
      trainingStartDate = "0";
      yearsOfExperience = "0";
      area = "0"; 
    }
    final dataRegister = RegisterRequest(
        accessKey: Constants.getAccessKey(),
        address: regProv.getAddress,
        description: regProv.getDescription,
        email: regProv.getEmail,
        file: photo.path,
        name: regProv.getFullName,
        password: regProv.getPassword,
        pIC: regProv.getPic.toString(),
        phonenumber: regProv.getPhone.toString(),
        role: dataBridge.getRoleList().toString(),
        availability: availability,
        cliping: cliping,
        styling: styling,
        keyFeatures: keyFeatures,
        trainingCourses: (regProv.getJoinTraining == false) ? "" : trainingCourses,
        trainingYears: (regProv.getJoinTraining == false) ? "" : trainingYears,
        trainingStartDate: (regProv.getJoinTraining == false) ? "" : trainingStartDate,
        yearsOfExperience: (regProv.getJoinTraining == false) ? "" : yearsOfExperience,
        coverageArea:area,
        
        );

    // print(dataRegister.toJson());
    registerBlocBloc.add(RegisterUser(registerData: dataRegister));
  }
}
