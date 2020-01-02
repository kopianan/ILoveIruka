import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/get_province_model.dart';
import 'package:i_love_iruka/models/request/edit_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/screens/register/register_widget.dart';
import 'package:i_love_iruka/screens/register/widgets/groomer_form.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/util/dimens.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:i_love_iruka/widgets/color_palate.dart';
import 'package:i_love_iruka/widgets/common_edittext.dart';
import 'package:i_love_iruka/widgets/description_edittext.dart';
import 'package:provider/provider.dart';

class GroomerPageProfile extends StatefulWidget {
  static const String page_name = "/groomer_page_profile";
  GroomerPageProfile({Key key}) : super(key: key);

  @override
  _GroomerPageProfileState createState() => _GroomerPageProfileState();
}

class _GroomerPageProfileState extends State<GroomerPageProfile> {
  Repository changeUserStatus = Repository();
  bool actve = false;
  TextEditingController controller = TextEditingController();

  Repository _repository = Repository();
  void fillEditRequestData(DataBridge dataBridge) {
    String filePhoto;
    if (dataBridge.getCurrentPhoto == null)
      filePhoto = null;
    else
      filePhoto = dataBridge.getCurrentPhoto.toString();

    final userDta = dataBridge.getUserData().user;
    EditRequest reg = EditRequest(
        accessKey: "d78c1a5c-ccbe-4c26-ac08-43ed66c8afb9",
        name: userDta.name,
        phonenumber: userDta.phoneNumber,
        address: userDta.address,
        description: controller.text,
        pic: userDta.description.toString(),
        iD: dataBridge.getUserData().user.id.toString(),
        availability: userDta.availability,
        cliping: userDta.clipping,
        coverageArea: userDta.coverageArea,
        keyFeatures: userDta.keyFeatures,
        styling: userDta.styling,
        trainingCourses: userDta.trainingCourses,
        trainingStartDate: userDta.trainingStartDate,
        trainingYears: userDta.trainingYears,
        yearsOfExperience: userDta.yearsOfExperience);
    print(reg.toString());

    _repository.editUser(reg).then((onValue) {
      SharedPref().saveLoginData(onValue);
      dataBridge.setUserData(onValue);
      Fluttertoast.showToast(msg: "Profile Edited");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(builder: (context, dataBridge, _) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Groomer Page ",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: SwitchListTile(
                activeColor: ColorPalate.darkOrange,
                subtitle: Text("Show or hide On Groomer List"),
                title: Text("Status"),
                value: dataBridge.getUserData().user.show,
                onChanged: (val) {
                  final _currUserData = dataBridge.getUserData();

                  changeUserStatus.changeUserStatus(dataBridge.getUserData().user.id, val).then((onValue) {
                    print(onValue);
                    _currUserData.user.show = val;
                    dataBridge.setUserData(_currUserData);
                    SharedPref().saveLoginData(_currUserData);
                  });
                },
              )),
              Container(
                  child: SwitchListTile(
                activeColor: ColorPalate.darkOrange,
                subtitle: Text("Available home grooming ? "),
                title: Text("Home Grooming"),
                value: dataBridge.getUserData().user.availability,
                onChanged: (val) {
                  final _currUserData = dataBridge.getUserData();

                  changeUserStatus.changeUserAvailability(dataBridge.getUserData().user.id, val).then((onValue) {
                    if (onValue != null) {
                      _currUserData.user.availability = val;
                      dataBridge.setUserData(_currUserData);
                      SharedPref().saveLoginData(_currUserData);
                    }
                  });
                },
              )),
              Container(
                child: ListTile(
                  title: Text("Description"),
                  subtitle: Text(
                    "${dataBridge.getUserData().user.description.toString()}",
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    "Edit",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    controller.text = dataBridge.getUserData().user.description;
                    showModalBottomSheet(
                        context: (context),
                        builder: (context) {
                          return Padding(
                              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      child: Text("Edit Description", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                    ),
                                    Divider(
                                      height: 20,
                                    ),
                                    Container(
                                      child: TextField(
                                        controller: controller,
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
                                          fillEditRequestData(dataBridge);
                                        },
                                        child: Text("Submit", style: TextStyle(color: Colors.white)),
                                      ),
                                    )
                                  ],
                                ),
                              ));
                        });
                  },
                ),
              ),
              Container(
                  child: ListTile(
                subtitle: Text("Trainig Information"),
                title: Text("Training at "),
                trailing: Text(
                  "View/Edit",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  showModalBottomSheet(
                      context: (context),
                      builder: (context) => ModalBottomTraining(
                            dataBridge: dataBridge,
                          ));
                },
              )),
            ]),
          ),
        ),
      );
    });
  }
}

class ModalBottomTraining extends StatefulWidget {
  const ModalBottomTraining({Key key, this.dataBridge}) : super(key: key);
  final DataBridge dataBridge;
  @override
  _ModalBottomTrainingState createState() => _ModalBottomTrainingState();
}

class _ModalBottomTrainingState extends State<ModalBottomTraining> {
  var _trainDateController;

  var _trainLongController;
  Repository _repository = Repository();
  var _trainNotesController;
  @override
  void initState() {
    _trainDateController = TextEditingController(text: Common.convertDate(widget.dataBridge.getUserData().user.trainingStartDate));
    _trainLongController = TextEditingController(text: widget.dataBridge.getUserData().user.trainingYears.toString());
    _trainNotesController = TextEditingController(text: widget.dataBridge.getUserData().user.trainingCourses);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Container(
              child: Text("Edit Data", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                TextFormField(
                  enableInteractiveSelection: false,
                  onTap: () {
                    DatePicker.showDatePicker(context, maxTime: DateTime.now(), minTime: DateTime(1990), onConfirm: (selectedDate) {
                      var date = Common.convertDate(selectedDate.toString());
                      // var date = selectedDate.day.toString() + "-" + selectedDate.month.toString() + "-" + selectedDate.year.toString();

                      _trainDateController.text = date;
                    });
                  },
                  controller: _trainDateController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.date_range),
                      hintText: "Training date at Vivianna's Grooming School",
                      labelText: "Training Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                ),
                SizedBox(
                  height: Dimens.distanceOfWidget,
                ),
                CommonEditText(
                  hintText: "10",
                  labelText: "Total year",
                  textEditingController: _trainLongController,
                  suffixText: "Year(s)",
                  textInputType: TextInputType.number,
                ),
                SizedBox(
                  height: Dimens.distanceOfWidget,
                ),
                DescriptionEditText(
                  hintText: "What Courses",
                  labelText: "Courses",
                  minLines: 3,
                  maxLines: 5,
                  textEditingController: _trainNotesController,
                  textInputType: TextInputType.text,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  child: FlatButton(
                    color: ColorPalate.darkOrange,
                    child: Text("Submit", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      fillEditRequestData(widget.dataBridge);
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
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
        name: userDta.name,
        phonenumber: userDta.phoneNumber,
        address: userDta.address,
        description: userDta.description,
        pic: userDta.description.toString(),
        iD: dataBridge.getUserData().user.id.toString(),
        availability: userDta.availability,
        cliping: userDta.clipping,
        coverageArea: userDta.coverageArea,
        keyFeatures: userDta.keyFeatures,
        styling: userDta.styling,
        trainingCourses: _trainNotesController.text,
        trainingStartDate: _trainDateController.text,
        trainingYears: int.parse(_trainLongController.text),
        yearsOfExperience: userDta.yearsOfExperience);
    print(reg.toString());

    _repository.editUser(reg).then((onValue) {
      SharedPref().saveLoginData(onValue);
      dataBridge.setUserData(onValue);
      Fluttertoast.showToast(msg: "Profile Edited");
      Navigator.of(context).pop();
    });
  }
}
