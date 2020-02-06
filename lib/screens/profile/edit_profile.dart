import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/request/edit_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/users/data/user_store.dart';
import 'package:i_love_iruka/util/camera_util.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:i_love_iruka/widgets/color_palate.dart';
import 'package:provider/provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'groomer_page_profile.dart';

class EditProfile extends StatefulWidget {
  static const String id = "/edit_profile";

  EditProfile({Key key, this.loginData}) : super(key: key);

  final LoginResponse loginData;

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _picController = TextEditingController();

  SharedPref sharedPref = SharedPref();
  Repository _repository = Repository();

  @override
  void initState() {
    Provider.of<DataBridge>(context, listen: false).setUserDataCopy(widget.loginData);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  EditRequest fillEditRequestData(DataBridge dataBridge) {
    User _userData = dataBridge.getUserDataCopy.user;
    String filePhoto;
    if (dataBridge.getCurrentPhoto == null)
      filePhoto = null;
    else
      filePhoto = dataBridge.getCurrentPhoto.toString();

    EditRequest reg = EditRequest(
      accessKey: "d78c1a5c-ccbe-4c26-ac08-43ed66c8afb9",
      name: _userData.name.toString(),
      phonenumber: _userData.phoneNumber.toString(),
      address: _userData.address.toString(),
      description: _userData.description.toString(),
      pic: _userData.pIC.toString(),
      iD: _userData.id.toString(),
      file: filePhoto,
      availability: _userData.availability,
      cliping: _userData.clipping,
      coverageArea: _userData.coverageArea.toString(),
      keyFeatures: _userData.keyFeatures.toString(),
      styling: _userData.styling,
      trainingCourses: _userData.trainingCourses.toString(),
      trainingStartDate: _userData.trainingStartDate.toString(),
      trainingYears: _userData.trainingYears,
      yearsOfExperience: _userData.yearsOfExperience,
      show: _userData.show,
    );
    print(reg);
    return reg;
  }

  @override
  Widget build(BuildContext context) {
    final reactiveModel = Injector.getAsReactive<UserStore>(context: context);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Consumer<RegisterProvider>(
          builder: (_, regProv, __) => Consumer<DataBridge>(
            builder: (_, dataBridge, __) => Container(
              alignment: Alignment.center,
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
                    ),
                    SizedBox(width: 20),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            Routes.navigator.pushNamed(Routes.groomerPageProfile);
                          },
                          child: Text(
                            "Profile",
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.only(right: 20),
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            color: Colors.red,
                            icon: Icon(Icons.exit_to_app),
                            onPressed: () {
                              SharedPref().clearPreference();
                              Routes.navigator.pushReplacementNamed(Routes.userLoginPage);
                            },
                          )),
                    )
                  ],
                ),
                SizedBox(height: 30),
                new ChangeProfilePicture(picture: dataBridge.getUserDataCopy.user.picture),
                SizedBox(height: 30),
                Column(
                  children: <Widget>[
                    Text("General Information"),
                    Divider(),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("${dataBridge.getUserDataCopy.user.name}"),
                      trailing: Text("Edit"),
                      subtitle: Text("Name"),
                      onTap: () {
                        _nameController.text = dataBridge.getUserDataCopy.user.name;
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: (context),
                            builder: (context) {
                              return BottomSheetEditOneField(
                                nameController: _nameController,
                                name: "Edit Name",
                                onPressed: () {
                                  widget.loginData.user.name = _nameController.text;
                                  dataBridge.setUserDataCopy(widget.loginData, notify: true);
                                  Navigator.of(context).pop();
                                },
                              );
                            });
                      },
                    ),
                    ListTile(
                      title: Text("${dataBridge.getUserDataCopy.user.address}"),
                      trailing: Text("Edit"),
                      subtitle: Text("Address"),
                      onTap: () {
                        _addressController.text = dataBridge.getUserDataCopy.user.address;
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: (context),
                            builder: (context) {
                              return BottomSheetEditOneField(
                                nameController: _addressController,
                                name: "Edit Address",
                                onPressed: () {
                                  widget.loginData.user.address = _addressController.text;
                                  dataBridge.setUserDataCopy(widget.loginData, notify: true);
                                  Navigator.of(context).pop();
                                },
                              );
                            });
                      },
                    ),
                    ListTile(
                      title: Text("${dataBridge.getUserDataCopy.user.phoneNumber}"),
                      trailing: Text("Edit"),
                      subtitle: Text("Phone Number"),
                      onTap: () {
                        _phoneController.text = dataBridge.getUserDataCopy.user.phoneNumber;
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: (context),
                            builder: (context) {
                              return BottomSheetEditOneField(
                                nameController: _phoneController,
                                name: "Edit Phone Number",
                                onPressed: () {
                                  widget.loginData.user.phoneNumber = _phoneController.text;
                                  dataBridge.setUserDataCopy(widget.loginData, notify: true);
                                  Navigator.of(context).pop();
                                },
                              );
                            });
                      },
                    ),
                  ],
                ),
                (widget.loginData.user.role.toLowerCase() == "owner")
                    ? ListTile(
                        title: Text("${dataBridge.getUserDataCopy.user.pIC}"),
                        trailing: Text("Edit"),
                        subtitle: Text("PIC"),
                        onTap: () {
                          _picController.text = dataBridge.getUserDataCopy.user.pIC;
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: (context),
                              builder: (context) {
                                return BottomSheetEditOneField(
                                  nameController: _picController,
                                  name: "Edit PIC",
                                  onPressed: () {
                                    widget.loginData.user.pIC = _picController.text;
                                    dataBridge.setUserDataCopy(widget.loginData, notify: true);
                                    Navigator.of(context).pop();
                                  },
                                );
                              });
                        },
                      )
                    : Container(
                        height: 0.0,
                      ),
                //  (widget.loginData.user.role.toLowerCase() == "groomer")  ?
                Column(
                  children: <Widget>[
                    SwitchListTile(
                      activeColor: ColorPalate.darkOrange,
                      subtitle: Text("Show or hide On Groomer List"),
                      title: Text("Status"),
                      value: dataBridge.getUserDataCopy.user.show,
                      onChanged: (val) {
                        widget.loginData.user.show = val;
                        dataBridge.setUserDataCopy(widget.loginData, notify: true);
                      },
                    ),
                    SwitchListTile(
                      activeColor: ColorPalate.darkOrange,
                      subtitle: Text("Available home grooming ? "),
                      title: Text("Home Grooming"),
                      value: dataBridge.getUserDataCopy.user.availability,
                      onChanged: (val) {
                        widget.loginData.user.availability = val;
                        dataBridge.setUserDataCopy(widget.loginData, notify: true);
                      },
                    ),
                    ListTile(
                      title: Text("${dataBridge.getUserDataCopy.user.description}"),
                      trailing: Text("Edit"),
                      subtitle: Text("Description"),
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: (context),
                            builder: (context) {
                              return BottomSheetEditOneField(
                                nameController: _descriptionController,
                                name: "Edit Description",
                                onPressed: () {
                                  widget.loginData.user.description = _descriptionController.text;
                                  dataBridge.setUserDataCopy(widget.loginData, notify: true);
                                  Navigator.of(context).pop();
                                },
                              );
                            });
                      },
                    ),
                    ListTile(
                      subtitle: Text("Coverage Area"),
                      title: Text("${dataBridge.getUserDataCopy.user.coverageArea.toString()}"),
                      trailing: Text(
                        "Edit",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {
                        dataBridge.setCityResults(null);
                        showModalBottomSheet(
                            context: (context),
                            builder: (context) => ModalBottomArea(
                                  dataBridge: dataBridge,
                                  onSubmitPressed: (String data) {
                                    widget.loginData.user.coverageArea = data;
                                    dataBridge.setUserDataCopy(widget.loginData, notify: true);
                                    Navigator.pop(context);
                                  },
                                ));
                      },
                    ),
                    ListTile(
                      title: Text("Home Grooming Skill"),
                      subtitle: Text("Edit and view data"),
                      trailing: Text(
                        "Edit",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onTap: () {
                        dataBridge.setCityResults(null);
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: (context),
                            builder: (context) => ModalBottomSkill(
                                  dataBridge: dataBridge,
                                  regProv: regProv,
                                  onSubmitPressed: () {
                                    widget.loginData.user.styling = int.parse(regProv.getStyling.toStringAsFixed(0));
                                    widget.loginData.user.clipping = int.parse(regProv.getCliping.toStringAsFixed(0));
                                    widget.loginData.user.yearsOfExperience = int.parse(regProv.getYearExperience);
                                    widget.loginData.user.keyFeatures = regProv.getKeyFeatures;
                                    Navigator.pop(context);
                                  },
                                ));
                      },
                    ),
                  ],
                )
                // :    Container(height: 0.0,),
                ,
                ListTile(
                  subtitle: Text("Trainig Information"),
                  title: Text("Training Information"),
                  trailing: Text(
                    "View/Edit",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: (context),
                        builder: (context) => ModalBottomTraining(
                              dataBridge: dataBridge,
                              onSubmit: () {
                                Navigator.pop(context);
                              },
                            ));
                  },
                ),
                RaisedButton(
                  child: Text("Simpan"),
                  onPressed: () {
                    reactiveModel.setState(
                        (store) => store.editUser(
                              fillEditRequestData(dataBridge),
                            ), onData: (context, data) {
                      Fluttertoast.showToast(msg: "Berhasil");

                      SharedPref _sharedPref = SharedPref();
                      _sharedPref.savingUserToLocal(loginData: json.encode(data.getLoginResponse.toJson()), prefKey: Constants.userSharedPref);

                      dataBridge.setUserDataCopy(data.getLoginResponse);
                      Navigator.pop(context);
                    }, onError: (context, err) {
                      Fluttertoast.showToast(msg: err.toString());
                    });
                  },
                )
              ]),
            ),
          ),
        ),
      ),
    ));
  }
}

class BottomSheetEditOneField extends StatelessWidget {
  const BottomSheetEditOneField({
    Key key,
    String name,
    Function onPressed,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        _title = name,
        _onPressed = onPressed,
        super(key: key);
  final String _title;
  final TextEditingController _nameController;
  final Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Text(_title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Divider(
                height: 20,
              ),
              Container(
                child: TextFormField(
                  controller: _nameController,
                  maxLines: 8,
                  minLines: 4,
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Color(0xffd45500),
                  onPressed: () {
                    _onPressed();
                  },
                  child: Text("Submit", style: TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ));
  }
}

// class InformationDate extends StatefulWidget {
//   const InformationDate(
//       {Key key,
//       @required this.name,
//       @required this.hint,
//       @required this.dateController})
//       : super(key: key);
//   final String hint;
//   final String name;
//   final TextEditingController dateController;

//   @override
//   _InformationDateState createState() => _InformationDateState();
// }

// class _InformationDateState extends State<InformationDate> {
//   DateTime selectedDate;
//   Future<Null> _selectDate(BuildContext context) async {
//     final DateTime picked = await showDatePicker(
//         context: context,
//         initialDate: DateTime(2015, 8),
//         firstDate: DateTime(2015, 8),
//         lastDate: DateTime(2101));
//     if (picked != null && picked != selectedDate)
//       setState(() {
//         selectedDate = picked;
//         widget.dateController.text = selectedDate.toIso8601String();
//       });
//   }

//   @override
//   void dispose() {
//     Provider.of<DataBridge>(context, listen: false).setCurrentPhoto(null);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Expanded(flex: 3, child: Text("${widget.name}")),
//             Expanded(
//                 flex: 7,
//                 child: TextField(
//                   onTap: () {
//                     _selectDate(context);
//                   },
//                   controller: widget.dateController,
//                   textAlign: TextAlign.end,
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: widget.hint,
//                   ),
//                 )),
//           ],
//         ),
//         Divider(
//           height: 0,
//         )
//       ],
//     );
//   }
// }

// class InformationItem extends StatelessWidget {
//   const InformationItem(
//       {Key key,
//       @required this.name,
//       @required this.hint,
//       this.maxLines = 1,
//       this.enable = true,
//       this.controller})
//       : super(key: key);
//   final String hint;
//   final String name;
//   final int maxLines;
//   final bool enable;
//   final TextEditingController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Expanded(
//                 flex: 3,
//                 child: Text(
//                   "$name",
//                 )),
//             Expanded(
//                 flex: 7,
//                 child: TextField(
//                   enabled: enable,
//                   controller: controller,
//                   onTap: () {},
//                   textAlign: TextAlign.end,
//                   minLines: maxLines,
//                   maxLines: maxLines,
//                   style: (enable) ? null : TextStyle(color: Colors.grey),
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: hint,
//                   ),
//                 )),
//           ],
//         ),
//         Divider(
//           height: 0,
//         )
//       ],
//     );
//   }
// }

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
                                  dataBridge.setCurrentPhoto(onValue);
                                });
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                                title: Text("Open Gallery"),
                                onTap: () {
                                  CameraUtil().takePicture(fromCamera: false).then((onValue) {
                                    dataBridge.setCurrentPhoto(onValue);
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
