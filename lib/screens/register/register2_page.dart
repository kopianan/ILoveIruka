import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/screens/register/register_additional.dart';
import 'package:i_love_iruka/screens/register/widgets/choose_account_type.dart';
import 'package:i_love_iruka/screens/register/widgets/input_picture.dart';
import 'package:i_love_iruka/users/data/user_store.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'widgets/groomer_form.dart';
import 'widgets/register_data_information.dart';

class Register2Page extends StatefulWidget {
  Register2Page({Key key}) : super(key: key);

  @override
  _Register2PageState createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page> {
  RegisterAdditional _registerAdditional = RegisterAdditional();
  ScrollController c;

  static const double distanceOfElement = 15.0;

  ReactiveModel<UserStore> reactiveModel;
  @override
  void initState() {
    c = new PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    reactiveModel = Injector.getAsReactive<UserStore>();
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Consumer<DataBridge>(
        builder: (context, dataBridge, _) => SafeArea(
            child: StateBuilder<UserStore>(
          models: [reactiveModel],
          builder: (context, userReact) {
            if (userReact.isIdle) {
              return buildRegisterPageForm(
                context,
                dataBridge,
              );
            } else if (userReact.isWaiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return buildRegisterPageForm(
                context,
                dataBridge,
              );
            }
          },
        )),
      ),
    );
  }

  Widget buildRegisterPageForm(
    BuildContext context,
    DataBridge dataBridge,
  ) {
    return Consumer<RegisterProvider>(
      builder: (_, registerProvider, __) => Container(
          child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: c,
        children: <Widget>[
          ChooseAccountType(registerAdditional: _registerAdditional, c: c),
          RegisterDataInformation(
              dataBridge: dataBridge,
              distanceOfElement: distanceOfElement,
              registerAdditional: _registerAdditional,
              c: c),
          GroomerForm(
            registerAdditional: _registerAdditional,
            c: c,
            registerProvider: registerProvider,
          ),
          InputPicture(
            onRegisterPressed:
                (DataBridge dataBridge, RegisterProvider regProv, File photo) =>
                    onRegisterPressed(
              dataBridge,
              regProv,
              photo,
            ),
            registerAdditional: _registerAdditional,
            c: c,
          )
        ],
      )),
    );
  }

  void onRegisterPressed(
      DataBridge dataBridge, RegisterProvider regProv, File photo) {
    final dataRegister = RegisterRequest(
      accessKey: Constants.getAccessKey(),
      address: regProv.getAddress.toString(),
      description: regProv.getDescription.toString(),
      email: regProv.getEmail,
      file: (photo == null) ? null : photo.path,
      name: regProv.getFullName,
      password: regProv.getPassword,
      pIC: regProv.getPic.toString(),
      phonenumber: regProv.getPhone.toString(),
      role: dataBridge.getRoleList().toString(),
      availability: regProv.getIsAvailable.toString(),
      cliping: regProv.getCliping.toString(),
      styling: regProv.getStyling.toString(),
      keyFeatures: regProv.getKeyFeatures.toString(),
      trainingCourses: (regProv.getJoinTraining == false)
          ? ""
          : regProv.getTrainLNotes.toString(),
      trainingYears: (regProv.getJoinTraining == false)
          ? ""
          : regProv.getTrainLong.toString(),
      trainingStartDate: (regProv.getJoinTraining == false)
          ? ""
          : regProv.getTrainDate.toString(),
      yearsOfExperience: regProv.getYearExperience.toString(),
      // coverageArea:"${dataBridge.getCityResults.type} ${dataBridge.getCityResults.cityName},${dataBridge.getCityResults.province}",
    );
    print(dataRegister.toJson());
    reactiveModel.setState((fn) => fn.registerUser(dataRegister),
        onError: (context, error) =>
            Fluttertoast.showToast(msg: error.toString()),
        onData: (context, store) {
          SharedPref _sharedPref = SharedPref();
          _sharedPref.savingUserToLocal(
              loginData: json.encode(store.getLoginResponse.toJson()),
              prefKey: Constants.userSharedPref);
          Provider.of<DataBridge>(context, listen: false)
              .setUserData(store.getLoginResponse);
          Routes.navigator.pushReplacementNamed(Routes.dashboardPage);
        });
  }
}
