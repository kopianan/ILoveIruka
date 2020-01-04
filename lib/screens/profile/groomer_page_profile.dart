import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/get_province_model.dart';
import 'package:i_love_iruka/models/model/get_city_model.dart' as city;
import 'package:i_love_iruka/models/request/edit_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/screens/register/register_widget.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/util/dimens.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:i_love_iruka/widgets/build_cliping_slider.dart';
import 'package:i_love_iruka/widgets/build_styling_slider.dart';
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

    _repository.editUser(reg).then((onValue) {
      SharedPref().saveLoginData(onValue);
      dataBridge.setUserData(onValue);
      Fluttertoast.showToast(msg: "Profile Edited");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterProvider>(
      builder: (_, regProv, __) => Consumer<DataBridge>(builder: (context, dataBridge, _) {
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
                        isScrollControlled: true,
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
                  title: Text("Change Coverage Area"),
                  subtitle: Text("Current : ${dataBridge.getUserData().user.coverageArea.toString()}"),
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
                            ));
                  },
                )),
                Container(
                    child: ListTile(
                  title: Text("Change Grooming Skill"),
                  subtitle: Text("Styling, Cliping and Experience"),
                  trailing: Text(
                    "Edit",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    dataBridge.setCityResults(null);
                    showModalBottomSheet(isScrollControlled: true, context: (context), builder: (context) => ModalBottomSkill(dataBridge: dataBridge, regProv: regProv));
                  },
                )),
                (dataBridge.getUserData().user.trainingStartDate == null || dataBridge.getUserData().user.trainingStartDate.toString() == "")
                    ? Container()
                    : Container(
                        child: ListTile(
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
                                  ));
                        },
                      )),
              ]),
            ),
          ),
        );
      }),
    );
  }
}

class ModalBottomSkill extends StatefulWidget {
  ModalBottomSkill({Key key, this.regProv, this.dataBridge}) : super(key: key);
  final DataBridge dataBridge;
  final RegisterProvider regProv;

  @override
  _ModalBottomSkillState createState() => _ModalBottomSkillState();
}

class _ModalBottomSkillState extends State<ModalBottomSkill> {
  TextEditingController _experienceLongController;

  TextEditingController _keyFeaturesController;

  @override
  void initState() {
    _experienceLongController = TextEditingController(text: widget.dataBridge.getUserData().user.yearsOfExperience.toString());
    _keyFeaturesController = TextEditingController(text: widget.dataBridge.getUserData().user.keyFeatures.toString());
    widget.regProv.setStyling(double.parse(widget.dataBridge.getUserData().user.styling.toString()));
    widget.regProv.setCliping(double.parse(widget.dataBridge.getUserData().user.clipping.toString()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text("Change Grooming Skill", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Styling : ${Common.skillMapper(double.parse(widget.dataBridge.getUserData().user.styling.toString()))}"),
              Text("Clipping : ${Common.skillMapper(double.parse(widget.dataBridge.getUserData().user.clipping.toString()))}"),
              Text("Experience Long : ${widget.dataBridge.getUserData().user.yearsOfExperience.toString()}"),
              Text("Key Features : ${widget.dataBridge.getUserData().user.keyFeatures.toString()}"),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  Text(
                    "Styling ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  BuildStylingSlider(
                    regProv: widget.regProv,
                  )
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  Text(
                    "Clipping ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  BuildClipingSlider(
                    regProv: widget.regProv,
                  )
                ],
              )),
              SizedBox(
                height: 20,
              ),
              CommonEditText(
                hintText: "10",
                labelText: "Experience long",
                textEditingController: _experienceLongController,
                suffixText: "Years",
                textInputType: TextInputType.number,
              ),
              SizedBox(
                height: Dimens.distanceOfWidget,
              ),
              CommonEditText(
                hintText: "What is your key features",
                labelText: "Features",
                textEditingController: _keyFeaturesController,
                textInputType: TextInputType.text,
              ),
              Container(
                width: double.infinity,
                child: FlatButton(
                  color: ColorPalate.darkOrange,
                  child: Text("Submit", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _fillEditRequestData(widget.dataBridge, context, widget.regProv);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _fillEditRequestData(DataBridge dataBridge, BuildContext context, RegisterProvider regProv) {
    final _repository = Repository();

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
        cliping: int.parse(regProv.getCliping.toStringAsFixed(0)),
        coverageArea: userDta.coverageArea,
        keyFeatures: _keyFeaturesController.text,
        styling: int.parse(regProv.getStyling.toStringAsFixed(0)),
        trainingCourses: userDta.trainingCourses,
        trainingStartDate: userDta.trainingStartDate,
        trainingYears: userDta.trainingYears,
        yearsOfExperience: int.parse(_experienceLongController.text));

    _repository.editUser(reg).then((onValue) {
      SharedPref().saveLoginData(onValue);
      dataBridge.setUserData(onValue);
      Fluttertoast.showToast(msg: "Coverage Area Edited");
      Navigator.of(context).pop();
    });
  }
}

class ModalBottomArea extends StatelessWidget {
  const ModalBottomArea({Key key, this.dataBridge}) : super(key: key);
  final DataBridge dataBridge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Container(
              child: Text("Change Coverage Area", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            ProvinceDropdown(),
            SizedBox(
              height: 20,
            ),
            BuildCityDropdown(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                color: ColorPalate.darkOrange,
                child: Text("Submit", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  _fillEditRequestData(dataBridge, context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _fillEditRequestData(DataBridge dataBridge, BuildContext context) {
    final cityData = dataBridge.getCityResults;
    final _repository = Repository();
    if (cityData == null) {
      Fluttertoast.showToast(msg: "Please choose city and province");
    } else {
      var coverageArea = "${cityData.type} ${cityData.cityName},${cityData.province}";

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
          coverageArea: coverageArea,
          keyFeatures: userDta.keyFeatures,
          styling: userDta.styling,
          trainingCourses: userDta.trainingCourses,
          trainingStartDate: userDta.trainingStartDate,
          trainingYears: userDta.trainingYears,
          yearsOfExperience: userDta.yearsOfExperience);

      _repository.editUser(reg).then((onValue) {
        SharedPref().saveLoginData(onValue);
        dataBridge.setUserData(onValue);
        Fluttertoast.showToast(msg: "Coverage Area Edited");
        Navigator.of(context).pop();
      });
    }
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
          mainAxisSize: MainAxisSize.min,
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
                      _fillEditRequestData(widget.dataBridge);
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

  void _fillEditRequestData(DataBridge dataBridge) {
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

    _repository.editUser(reg).then((onValue) {
      SharedPref().saveLoginData(onValue);
      dataBridge.setUserData(onValue);
      Fluttertoast.showToast(msg: "Profile Edited");
      Navigator.of(context).pop();
    });
  }
}
