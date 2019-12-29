import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/screens/register/register_additional.dart';
import 'package:i_love_iruka/widgets/build_cliping_slider.dart';
import 'package:i_love_iruka/widgets/build_styling_slider.dart';
import 'package:i_love_iruka/widgets/color_palate.dart';
import 'package:i_love_iruka/widgets/common_edittext.dart';
import 'package:i_love_iruka/widgets/description_edittext.dart';
import 'package:i_love_iruka/widgets/register_button_next_and_back.dart';
import 'package:provider/provider.dart';

import '../register_widget.dart';

class GroomerForm extends StatefulWidget {
  const GroomerForm({
    Key key,
    @required RegisterAdditional registerAdditional,
    @required this.c,
    @required RegisterProvider registerProvider,
  })  : _registerAdditional = registerAdditional,
        _registerProvider = registerProvider,
        super(key: key);

  final RegisterAdditional _registerAdditional;
  final RegisterProvider _registerProvider;

  final ScrollController c;

  @override
  _GroomerFormState createState() => _GroomerFormState();
}

class _GroomerFormState extends State<GroomerForm> {
  final double distanceOfWidget = 10;
  var _experienceLongController = TextEditingController();
  var _keyFeaturesController = TextEditingController();
  var _trainDateController = TextEditingController();
  var _trainLongController = TextEditingController();
  var _trainNotesController = TextEditingController();
  RegisterProvider regProvider;
  @override
  void initState() {
    regProvider = widget._registerProvider;
    _experienceLongController.text = regProvider.getYearExperience;
    _keyFeaturesController.text = regProvider.getKeyFeatures;
    _trainDateController.text = regProvider.getTrainDate;
    _trainLongController.text = regProvider.getTrainLong;
    _trainNotesController.text = regProvider.getTrainLNotes;

    super.initState();
  }

  var sliderLabel = TxtStyle()
    ..fontSize(16)
    ..alignment.centerLeft();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                child: Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Groomer Page Form",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      HomeGroomingAvailability(
                        regProv: regProvider,
                      ),
                      SizedBox(
                        height: distanceOfWidget + 10,
                      ),
                      Column(
                        children: <Widget>[
                          Txt("Your styling skill :", style: sliderLabel),
                          BuildStylingSlider(
                            regProv: regProvider,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: distanceOfWidget + 10,
                      ),
                      Column(
                        children: <Widget>[
                          Txt("Your clipping skill :", style: sliderLabel),
                          BuildClipingSlider(
                            regProv: regProvider,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: distanceOfWidget,
                      ),
                      ProvinceDropdown(),
                      SizedBox(
                        height: distanceOfWidget,
                      ),
                      BuildCityDropdown(),
                      SizedBox(
                        height: distanceOfWidget,
                      ),
                      CommonEditText(
                        hintText: "10",
                        labelText: "Experience long",
                        textEditingController: _experienceLongController,
                        suffixText: "Years",
                        textInputType: TextInputType.number,
                      ),
                      SizedBox(
                        height: distanceOfWidget,
                      ),
                      CommonEditText(
                        hintText: "What is your key features",
                        labelText: "Features",
                        textEditingController: _keyFeaturesController,
                        textInputType: TextInputType.number,
                      ),
                      BuildTrainingSwitch(
                        regProv: regProvider,
                      ),
                      (regProvider.getJoinTraining == false)
                          ? Container()
                          : Column(
                              children: <Widget>[
                                TextFormField(
                                  enableInteractiveSelection: false,
                                  onTap: () {
                                    DatePicker.showDatePicker(context, maxTime: DateTime.now(), minTime: DateTime(1990), onConfirm: (selectedDate) {
                                      var date = selectedDate.year.toString() + "-" + selectedDate.month.toString() + "-" + selectedDate.day.toString();

                                      regProvider.setTrainDate(date);
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
                                  height: distanceOfWidget,
                                ),
                                CommonEditText(
                                  hintText: "10",
                                  labelText: "Total year",
                                  textEditingController: _trainLongController,
                                  suffixText: "Year(s)",
                                  textInputType: TextInputType.number,
                                ),
                                SizedBox(
                                  height: distanceOfWidget,
                                ),
                                DescriptionEditText(
                                  hintText: "What Courses",
                                  labelText: "Courses",
                                  minLines: 3,
                                  maxLines: 5,
                                  textEditingController: _trainNotesController,
                                  textInputType: TextInputType.text,
                                ),
                              ],
                            ),
                    ],
                  ),
                )
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RegisterButtonNextAndBack(
                  buttonColor: ColorPalate.blueGradient1,
                  buttonText: "Back",
                  onButtonPressed: onBackPressedFunction,
                ),
                RegisterButtonNextAndBack(
                  buttonColor: ColorPalate.darkOrange,
                  buttonText: "Next",
                  onButtonPressed: onNextPressedFunction,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onBackPressedFunction() {
    widget._registerAdditional.backAnimated(context, widget.c, 1);
  }

  void onNextPressedFunction() {
    widget._registerAdditional.nextAnimated(context, widget.c, 4);
    regProvider.setYearExperience(_experienceLongController.text);
    regProvider.setKeyFeatures(_keyFeaturesController.text);
    regProvider.setTrainLong(_trainLongController.text);
    regProvider.setTrainNotes(_trainNotesController.text);
    DataBridge dataBridge = Provider.of<DataBridge>(context, listen: false);

    print("${regProvider.getIsAvailable} + available");
    print("${regProvider.getStyling} + getStyling");
    print("${regProvider.getCliping} + getCliping");

    print("${dataBridge.getCityResults.province} + getProvince");
    print("${dataBridge.getCityResults.cityName} + getCity");
    print("${regProvider.getYearExperience} + getYearExperience");
    print("${regProvider.getKeyFeatures} + getKeyFeatures");
    print("${regProvider.getTrainDate} + getTrainDate");
    print("${regProvider.getTrainLNotes} + getTrainLNotes");
    print("${regProvider.getTrainLong} + getTrainLong");
  }
}

class BuildTrainingSwitch extends StatelessWidget {
  const BuildTrainingSwitch({
    this.regProv,
    Key key,
  }) : super(key: key);

  final RegisterProvider regProv;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      onChanged: (val) {
        regProv.setJoinTraining(val);
      },
      title: Text("Have you ever been trained?"),
      subtitle: Text("Training at Vivianna’s Grooming School"),
      value: regProv.getJoinTraining,
    );
  }
}

class HomeGroomingAvailability extends StatelessWidget {
  const HomeGroomingAvailability({
    Key key,
    this.regProv,
  }) : super(key: key);
  final RegisterProvider regProv;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SwitchListTile(
        title: Text("Home Grooming Availability"),
        subtitle: Text("Is groomer available with home grooming ?"),
        value: regProv.getIsAvailable,
        onChanged: (newVal) {
          regProv.setIsAvailable(newVal);
        },
      ),
    );
  }
}
