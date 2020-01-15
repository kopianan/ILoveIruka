import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/screens/register/register_additional.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_g.dart';
import 'package:i_love_iruka/screens/register/widgets/choose_account_type.dart';
import 'package:i_love_iruka/screens/register/widgets/input_picture.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';
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

  final registerBloc = RegisterBlocBloc();

  @override
  void initState() {
    c = new PageController();
    super.initState();
  }

  File photo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Consumer<DataBridge>(
        builder: (context, dataBridge, _) => SafeArea(
          child: BlocListener<RegisterBlocBloc, RegisterBlocState>(
            bloc: registerBloc,
            listener: (context, state) {
              if (state is RegisterComplete) {
                Fluttertoast.showToast(msg: "Register Successful", toastLength: Toast.LENGTH_LONG, fontSize: 16, gravity: ToastGravity.CENTER);
                SharedPref().saveLoginData(state.response);
                Navigator.pushReplacementNamed(context, "/dashboard");
                // Navigator.pop(context); 
                dataBridge.setUserData(state.response);
              }
            },
            child: BlocBuilder<RegisterBlocBloc, RegisterBlocState>(
              bloc: registerBloc,
              builder: (context, state) {
                if (state is RegisterLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is RegisterError) {
                  return Center(
                    child: Text("Something wrong"),
                  );
                }
                return buildRegisterPageForm(context, dataBridge, registerBloc);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRegisterPageForm(BuildContext context, DataBridge dataBridge, RegisterBlocBloc registerBlocBloc) {
    return Consumer<RegisterProvider>(
      builder: (_, registerProvider, __) => Container(
          child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: c,
        children: <Widget>[
          ChooseAccountType(registerAdditional: _registerAdditional, c: c),
          RegisterDataInformation(dataBridge: dataBridge, distanceOfElement: distanceOfElement, registerAdditional: _registerAdditional, c: c),
          GroomerForm(
            registerAdditional: _registerAdditional,
            c: c,
            registerProvider: registerProvider,
          ),
          InputPicture(
            registerAdditional: _registerAdditional,
            c: c,
            registerBlocBloc: registerBlocBloc,
          )
        ],
      )),
    );
  }
}
