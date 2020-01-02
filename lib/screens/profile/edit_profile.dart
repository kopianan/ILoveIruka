import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/request/edit_request.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/camera_util.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  static const String id = "/edit_profile";

  EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _dateController;
  TextEditingController _nameController;
  TextEditingController _addressController;
  TextEditingController _emailController;
  TextEditingController _phoneController;
  TextEditingController _descriptionController;
  TextEditingController _picController;

  SharedPref sharedPref = SharedPref();
  User dataLogin;
  Repository _repository = Repository();
  @override
  void initState() {
    Provider.of<DataBridge>(context, listen: false).setCurrentPhoto(null);
    dataLogin = Provider.of<DataBridge>(context, listen: false).getUserData().user;
    _nameController = TextEditingController(text: dataLogin.name.toString());
    _addressController = TextEditingController(text: dataLogin.address.toString());
    _emailController = TextEditingController(text: dataLogin.email.toString());
    _phoneController = TextEditingController(text: dataLogin.phoneNumber.toString());
    _picController = TextEditingController(text: dataLogin.pIC.toString());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void fillEditRequestData(DataBridge dataBridge) {
    String filePhoto;
    if (dataBridge.getCurrentPhoto == null)
      filePhoto = null;
    else
      filePhoto = dataBridge.getCurrentPhoto.toString();

    final userDta = dataBridge.getUserData().user;
    EditRequest reg = EditRequest(
      accessKey: "d78c1a5c-ccbe-4c26-ac08-43ed66c8afb9",
      name: (_nameController == null) ? "" : _nameController.text.toString(),
      phonenumber: (_phoneController == null) ? "" : _phoneController.text.toString(),
      address: (_addressController == null) ? "" : _addressController.text.toString(),
      description: dataBridge.getUserData().user.description.toString(),
      pic: (_picController == null) ? "" : _picController.text.toString(),
      iD: dataBridge.getUserData().user.id.toString(),
      file: filePhoto,
      availability: userDta.availability,
      cliping: userDta.clipping,
      coverageArea: userDta.coverageArea,
      keyFeatures: userDta.keyFeatures,
      styling: userDta.styling,
      trainingCourses: userDta.trainingCourses,
      trainingStartDate: userDta.trainingStartDate,
      trainingYears: userDta.trainingYears,
      yearsOfExperience: userDta.yearsOfExperience,
    );
  print(reg.toString()); 
    
    _repository.editUser(reg).then((onValue) {
      SharedPref().saveLoginData(onValue);
      dataBridge.setUserData(onValue);
      Fluttertoast.showToast(msg: "Profile Edited");
    });
  }

  String name;
  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(builder: (context, dataBridge, _) {
      return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          label: Text("Save"),
          icon: Icon(
            Icons.save,
          ),
          onPressed: () {
            fillEditRequestData(dataBridge);
          },
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Profile",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(height: 50),
              new ChangeProfilePicture(picture: dataLogin.picture),
              SizedBox(height: 30),
              new InformationItem(
                name: "Name",
                hint: "Input your name",
                controller: _nameController,
              ),
              new InformationItem(name: "Address", hint: "Input your Address", maxLines: 2, controller: _addressController),
              new InformationItem(
                name: "Email",
                hint: "E-mail",
                maxLines: 1,
                enable: false,
                controller: _emailController,
              ),

              new InformationItem(
                name: "Phone Number",
                hint: "Phone",
                maxLines: 1,
                enable: true,
                controller: _phoneController,
              ),

              (dataLogin.role.toString().toLowerCase().contains("owner"))
                  ? InformationItem(
                      name: "PIC",
                      hint: "PIC",
                      controller: _picController,
                    )
                  : Container(),

              // (dataLogin.role.toString().toLowerCase().contains("groomer"))
              //     ? InformationItem(
              //         name: "Description",
              //         hint: "Fill Your Description",
              //         maxLines: 3,
              //         controller: _descriptionController,
              //       )
              //     : Container(),

              // new InformationDate(
              //   name: "Birth Of Date",
              //   hint: "Input your birth of date",
              //   dateController: _dateController,
              // ),
              // new InformationItem(
              //   name: "Gender",
              //   hint: "Choose your gender",
              // ),
            ]),
          ),
        ),
      );
    });
  }
}

class InformationDate extends StatefulWidget {
  const InformationDate({Key key, @required this.name, @required this.hint, @required this.dateController}) : super(key: key);
  final String hint;
  final String name;
  final TextEditingController dateController;

  @override
  _InformationDateState createState() => _InformationDateState();
}

class _InformationDateState extends State<InformationDate> {
  DateTime selectedDate;
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context, initialDate: DateTime(2015, 8), firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        widget.dateController.text = selectedDate.toIso8601String();
      });
  }

  @override
  void dispose() {
    Provider.of<DataBridge>(context, listen: false).setCurrentPhoto(null);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(flex: 3, child: Text("${widget.name}")),
            Expanded(
                flex: 7,
                child: TextField(
                  onTap: () {
                    _selectDate(context);
                  },
                  controller: widget.dateController,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hint,
                  ),
                )),
          ],
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}

class InformationItem extends StatelessWidget {
  const InformationItem({Key key, @required this.name, @required this.hint, this.maxLines = 1, this.enable = true, this.controller}) : super(key: key);
  final String hint;
  final String name;
  final int maxLines;
  final bool enable;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Text(
                  "$name",
                )),
            Expanded(
                flex: 7,
                child: TextField(
                  enabled: enable,
                  controller: controller,
                  onTap: () {},
                  textAlign: TextAlign.end,
                  minLines: maxLines,
                  maxLines: maxLines,
                  style: (enable) ? null : TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                  ),
                )),
          ],
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}

class ChangeProfilePicture extends StatelessWidget {
  const ChangeProfilePicture({
    @required this.picture,
    Key key,
  }) : super(key: key);
  final String picture;
  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(
      builder: (context, dataBridge, _) => Stack(
        children: <Widget>[
          InkWell(
            onTap: () {
              showDialog(
                  context: (context),
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Change Profile Picture",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            ListTile(
                              title: Text("Open Camera"),
                              onTap: () {
                                CameraUtil().takePicture(fromCamera: true).then((onValue) {
                                  final _currentData = dataBridge.getUserData();

                                  dataBridge.setCurrentPhoto(onValue);
                                  print(onValue);
                                });
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                                title: Text("Open Gallery"),
                                onTap: () {
                                  CameraUtil().takePicture(fromCamera: false).then((onValue) {
                                    final _currentData = dataBridge.getUserData();

                                    dataBridge.setCurrentPhoto(onValue);
                                    print(onValue);
                                  });
                                  Navigator.pop(context);
                                }),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: (dataBridge.getCurrentPhoto == null) ? NetworkImage(Constants.getWebUrl() + "/$picture") : FileImage(File(dataBridge.getCurrentPhoto.toString())),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              child: Icon(Icons.image, color: Colors.white),
              decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.white), shape: BoxShape.circle, color: Colors.amber),
            ),
          )
        ],
      ),
    );
  }
}
