import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'register_additional.dart';

class UserRegisterInformation extends StatefulWidget {
  //
  //

  // final bool _obscureText;
  // final BuildContext context;
  //

  @override
  _UserRegisterInformationState createState() =>
      _UserRegisterInformationState();
}

class _UserRegisterInformationState extends State<UserRegisterInformation> {
  static const double distanceOfElement = 15.0;

  var _firstNameController = TextEditingController();
  var _lastNameController = TextEditingController();
  var _emailController = TextEditingController();
  var _phoneController = TextEditingController();
  var _passwordController = TextEditingController();
  var _repeatPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
 
  bool _obscureText;
  ScrollController c;
  RegisterAdditional _registerAdditional = RegisterAdditional();
  @override
  void initState() {
    super.initState();
    c = new PageController();
  }

  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            child: Text(
          "Fill Your Information ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Parent(
                      child: Txt(
                        "", 
                        style: TxtStyle()..editable()..border(),
                        ),
                    ),
                  ),
                  // Expanded(
                  //   child: Container(
                  //     margin: EdgeInsets.only(right: 10),
                  //     child: TextFormField(
                  //         validator: RegisterAdditional.validateName,
                  //         onSaved: (String val) {
                  //           // _firstName = val;
                  //         },
                  //         decoration: 
                          
                  //         InputDecoration(
                  //             hintText: "First Name", labelText: "First Name")),
                  //   ),
                  // ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: TextFormField(
                          validator: RegisterAdditional.validateName,
                          onSaved: (String val) {
                            // _lastName = val;
                          },
                          decoration: InputDecoration(
                              hintText: "Last Name", labelText: "Last Name")),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: distanceOfElement,
              ),
              TextFormField(
                  validator: RegisterAdditional.validateEmail,
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: "Email Address", labelText: "Email address")),
              SizedBox(
                height: distanceOfElement,
              ),
              TextFormField(
                  validator: RegisterAdditional.validateName,
                  onSaved: (String val) {
                    // _phone = val;
                  },
                  keyboardType: TextInputType.phone,
                  decoration:
                      InputDecoration(hintText: "Phone", labelText: "Phone")),
              SizedBox(
                height: distanceOfElement,
              ),
              TextFormField(
                  obscureText: _obscureText,
                  validator: RegisterAdditional.validateName,
                  onSaved: (String val) {
                    // _password = val;
                  },
                  decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: (!_obscureText)
                            ? Icon(FontAwesomeIcons.eye)
                            : Icon(FontAwesomeIcons.eyeSlash),
                        onPressed: () {
                          // _toggle();
                        },
                      ))),
              SizedBox(
                height: distanceOfElement,
              ),
              TextFormField(
                  obscureText: _obscureText,
                  validator: RegisterAdditional.validateName,
                  onSaved: (String val) {
                    // _retypePassword = val;
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: (!_obscureText)
                            ? Icon(FontAwesomeIcons.eye)
                            : Icon(FontAwesomeIcons.eyeSlash),
                        onPressed: () {
                          // _toggle();
                        },
                      ),
                      hintText: "Repeat Password",
                      labelText: "Repeat Password")),
              SizedBox(
                height: distanceOfElement,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                child: Text("Back"),
                onPressed: () {
                  _registerAdditional.backAnimated(context, c, 0);
                },
              ),
              FloatingActionButton(
                child: Icon(FontAwesomeIcons.arrowRight),
                onPressed: () {
                  // validateRegisterUser();
                },
              ),
            ],
          ),
        ),
      ],
    ));
  }

  void validateRegisterUser() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      if (_passwordController != _repeatPasswordController) {
        Fluttertoast.showToast(msg: "Password doesn't match");
        // } else if (_userType == null) {
        //   Fluttertoast.showToast(msg: "Choose User Type");
      } else {
        _registerAdditional.backAnimated(context, c, 2);
        // final dataRegister = RegisterRequest(
        //     accessKey: Constants().getAccessKey(),
        //     address: "Alamat",
        //     description: "Description",
        //     email: "anan1@gmail.com",
        //     file: dataBridge.getFileName(),
        //     name: "Nama cuk",
        //     password: "1234",
        //     phonenumber: "Phone number",
        //     role: "ROLE ID");
        // _registerBloc.add(RegisterUser(registerData: dataRegister));
      }
    } else {
//    If all data are not valid thezn start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }
}
