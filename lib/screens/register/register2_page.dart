import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/screens/register/register_additional.dart';
import 'package:i_love_iruka/screens/register/user_register_information.dart';
import 'package:i_love_iruka/screens/register/user_register_photo.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';

import '../../data/repository.dart';
import '../../models/model/roles_model.dart';

class Register2Page extends StatefulWidget {
  Register2Page({Key key}) : super(key: key);

  @override
  _Register2PageState createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page> {
  Future<RolesModel> _getRolesOff;
  Repository _repository = Repository();
  String _dropDownValue;
  RegisterAdditional _registerAdditional = RegisterAdditional();
  ScrollController c;

  static const double distanceOfElement = 15.0;

  String _firstName;
  String _lastName;
  String _email;
  String _phone;
  String _password;
  String _retypePassword;
  String _userType;
  // var _firstNameController = TextEditingController();
  // var _lastNameController = TextEditingController();
  // var _emailController = TextEditingController();
  // var _phoneController = TextEditingController();
  // var _passwordController = TextEditingController();
  // var _repeatPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = false;
  bool _autoValidate = false;
  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    _getRolesOff = _repository.getRolesList();

    c = new PageController();
    super.initState();
  }

  String validateName(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length == 0)
      return 'Must Be filled';
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  validateRegisterUser() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      if (_password != _retypePassword) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: PageView(
          controller: c,
          children: <Widget>[
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Text(
                  "Who Are You ? ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
                buildDropdownRole(),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    child: Icon(FontAwesomeIcons.arrowRight),
                    onPressed: () {
                      ///validate before go to next page
                      print(_dropDownValue.toString() + "DropDown");
                      if (_dropDownValue == null) {
                        Fluttertoast.showToast(
                          msg: "Please Choose Type First",
                        );
                      } else {
                        _registerAdditional.nextAnimated(context, c, 1);
                      }
                    },
                  ),
                ),
              ],
            )),
            KeyboardAvoider(
              autoScroll: true,
                          child: Container(
                  child: Form(
                autovalidate: _autoValidate,
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Text(
                      "Fill Your Information ",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: TextFormField(
                                    validator: validateName,
                                    onSaved: (String val) {
                                      setState(() {
                                        _firstName = val; 
                                      });
                                     
                                    },
                                    decoration: InputDecoration(
                                        hintText: "First Name",
                                        labelText: "First Name")),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: TextFormField(
                                    validator: validateName,
                                    onSaved: (String val) {
                                      _lastName = val;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Last Name",
                                        labelText: "Last Name")),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: distanceOfElement,
                        ),
                        TextFormField(
                            validator: validateEmail,
                            onSaved: (String val) {
                              _email = val;
                            },
                            decoration: InputDecoration(
                                hintText: "Email Address",
                                labelText: "Email address")),
                        SizedBox(
                          height: distanceOfElement,
                        ),
                        TextFormField(
                            validator: validateName,
                            onSaved: (String val) {
                              _phone = val;
                            },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                hintText: "Phone", labelText: "Phone")),
                        SizedBox(
                          height: distanceOfElement,
                        ),
                        TextFormField(
                            obscureText: _obscureText,
                            validator: validateName,
                            onSaved: (String val) {
                              _password = val;
                            },
                            decoration: InputDecoration(
                                hintText: "Password",
                                labelText: "Password",
                                suffixIcon: IconButton(
                                  icon: (!_obscureText)
                                      ? Icon(FontAwesomeIcons.eye)
                                      : Icon(FontAwesomeIcons.eyeSlash),
                                  onPressed: () {
                                    toggle();
                                  },
                                ))),
                        SizedBox(
                          height: distanceOfElement,
                        ),
                        TextFormField(
                            obscureText: _obscureText,
                            validator: validateName,
                            onSaved: (String val) {
                              _retypePassword = val;
                            },
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: (!_obscureText)
                                      ? Icon(FontAwesomeIcons.eye)
                                      : Icon(FontAwesomeIcons.eyeSlash),
                                  onPressed: () {
                                    toggle();
                                  },
                                ),
                                hintText: "Repeat Password",
                                labelText: "Repeat Password")),
                        SizedBox(
                          height: distanceOfElement,
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
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
                              validateRegisterUser();
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
            ),
            Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hi, $_firstName\nPlease Upload Your Photo",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey[300],
              child: Icon(
                Icons.image,
                size: 80,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Take Photo"),
                onPressed: () {},
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                child: Text("Back"),
                onPressed: () {
                  _registerAdditional.backAnimated(context, c, 1);
                },
              ),
              Container(
                width: 150,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    print(_firstName );
                  },
                  label: Text("Register"),
                ),
              ),
            ],
          ),
        ),
      ],
    ))
          ],
        )),
      ),
    );
  }

  Widget buildDropdownRole() {
    return FutureBuilder(
      future: _getRolesOff,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        RolesModel roles = snapshot.data;
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            // TODO: Handle this case.
            break;
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active:
            // TODO: Handle this case.
            break;
          case ConnectionState.done:
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: DropdownButton(
                underline: SizedBox(),
                isDense: false,
                elevation: 3,
                isExpanded: true,
                onChanged: (val) {
                  setState(() {
                    _dropDownValue = val;
                  });
                },
                value: _dropDownValue,
                hint: Text("User Type"),
                items: roles.roleList.map((f) {
                  return DropdownMenuItem(
                    child: Text(
                      f.name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    value: f.name,
                  );
                }).toList(),
              ),
            );
            break;
        }
      },
    );
  }
}
