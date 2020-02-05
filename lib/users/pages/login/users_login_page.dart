import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/users/data/user_store.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:i_love_iruka/widgets/loading_page.dart';
import 'package:provider/provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class UserLoginPage extends StatefulWidget {
  UserLoginPage({Key key}) : super(key: key);

  @override
  _UserLoginPageState createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  var usernmaeController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xffF6F5F8),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
            Color(0xff0b4987),
            Color(0xff558dc5),
          ])),
          child: StateBuilder<UserStore>(
            models: [Injector.getAsReactive<UserStore>()],
            builder: (context, reactive) {
              if (reactive.isWaiting) {
                return LoadingPage();
              } else {
                return buildLoginPageInitial();
              }
            },
          ),
        ));
  }

  Widget buildLoginPageInitial() {
    return Stack(children: <Widget>[
      Positioned(
          bottom: -80,
          right: -30,
          child: Image.asset(
            "images/assets/iruka_cloud.png",
            width: 200,
          )),
      Positioned(
          bottom: 50,
          right: 170,
          child: Image.asset(
            "images/assets/iruka_cloud.png",
            width: 120,
          )),
      Positioned(
          bottom: 150,
          right: 30,
          child: Image.asset(
            "images/assets/iruka_cloud.png",
            width: 80,
          )),
      Container(
        margin: EdgeInsets.only(top: 70, right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "images/assets/iruka_logo.png",
                            width: 150,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: 40,
                          ),
                          LoginTextField(
                            keyboardType: TextInputType.emailAddress,
                            label: "Email Address",
                            textEditingController: usernmaeController,
                            validator: validateEmail,
                            isPassword: false,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          LoginTextField(
                            keyboardType: TextInputType.text,
                            label: "Password",
                            textEditingController: passwordController,
                            validator: validatePassword,
                            isPassword: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        child: RaisedButton(
                          color: Color(0xff0b4987),
                          onPressed: () {
                            _validateInputs(context, usernmaeController.text, passwordController.text);
                          },
                          child: Text("Login",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 30),
                          child: InkWell(
                            onTap: () {
                              Routes.navigator.pushNamed(Routes.register2page);
                            },
                            child: Text(
                              "Don't Have Account ? Sign Up",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset(
                "images/assets/iruka_petcare_white.png",
                width: 200,
              ),
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    ]);
  }

  String validateEmail(String value) {
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validatePassword(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length < 3)
      return 'Password must be more then 6 digits';
    else
      return null;
  }

  void _validateInputs(BuildContext context, String email, String password) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      final reactiveModel = Injector.getAsReactive<UserStore>();

      final dataLogin = LoginRequest(username: "$email", password: "$password");
      reactiveModel.setState(
        (fn) => fn.getLoginRsponseFromResponse(dataLogin),
        onData: (context, content) {
          if (content.getFailure != null) {
            Fluttertoast.showToast(msg: content.getFailure.message);
          } else {
            SharedPref _sharedPref = SharedPref();
            _sharedPref.savingUserToLocal(loginData: json.encode(content.getLoginResponse.toJson()), prefKey: Constants.userSharedPref);
            Provider.of<DataBridge>(context, listen: false).setUserData(content.getLoginResponse);
          }
        },
      );
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}

class LoginTextField extends StatefulWidget {
  const LoginTextField({Key key, this.textEditingController, this.validator, this.keyboardType, this.label, this.isPassword}) : super(key: key);

  final TextEditingController textEditingController;
  final Function validator;
  final TextInputType keyboardType;
  final String label;
  final bool isPassword;

  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  bool obsecureText = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.person_outline,
            color: Colors.grey,
          ),
        ),
        Container(
          height: 30.0,
          width: 1.0,
          margin: EdgeInsets.only(right: 10),
          color: Colors.grey.withOpacity(0.5),
        ),
        new Expanded(
          child: TextFormField(
            obscureText: obsecureText,
            style: TextStyle(color: Colors.white),
            controller: widget.textEditingController,
            validator: widget.validator,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
              suffixIcon: (widget.isPassword)
                  ? IconButton(
                      icon: Icon(obsecureText ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          obsecureText = !obsecureText;
                        });
                      },
                    )
                  : null,
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              labelStyle: TextStyle(color: Colors.grey),
              labelText: widget.label,
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
