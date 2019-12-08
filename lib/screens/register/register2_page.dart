import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/screens/register/register_additional.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_g.dart';
import 'package:i_love_iruka/screens/register/register_widget.dart';
import 'package:i_love_iruka/util/camera_util.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';
import 'package:provider/provider.dart';

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
  String _picPhoneNumber ; 
  var _firstNameController = TextEditingController();
  var _lastNameController = TextEditingController();
  var _emailController = TextEditingController();
  var _phoneController = TextEditingController();
  var _passwordController = TextEditingController();
  var _repeatPasswordController = TextEditingController();
  var _picPhoneNumberController = TextEditingController();
  


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _autoValidate = false;
  final registerBloc = RegisterBlocBloc();
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

  validateRegisterUser() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      if (_password != _retypePassword) {
        Fluttertoast.showToast(msg: "Password doesn't match");
      } else {
        _registerAdditional.backAnimated(context, c, 2);
      }
    } else {
//    If all data are not valid thezn start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  File photo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Consumer<DataBridge>(
              builder:(context, dataBridge, _)=>  SafeArea(
          child: BlocListener<RegisterBlocBloc, RegisterBlocState>(
            bloc: registerBloc,
            listener: (context, state) {
              if (state is RegisterComplete) {
                Navigator.of(context).pushNamed("/dashboard");
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
                return buildRegisterPageForm(context, dataBridge);
              },
            ),
          ),
        ),
      ),
    );
  }

  Container buildRegisterPageForm(BuildContext context, DataBridge dataBridge) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: c,
          children: <Widget>[
            Stack(
              
              children: <Widget>[
                // Positioned(
                //   right: 20,
                //   top: 20,
                //   child: Image.asset(
                //   "images/assets/iruka_cloud.png", width: 150,
                // ),),
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Text(
                      "Who Are You ? ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                    RoleDropDown(
                      getRolesOff: _getRolesOff,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Back"),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            child: Icon(FontAwesomeIcons.arrowRight),
                            onPressed: () {
                              ///validate before go to next page
                              if (dataBridge.getRoleList() == null) {
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
                    ),
                  ],
                )),
              ],
            ),
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
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                                    controller: _firstNameController,
                                    validator: RegisterAdditional.validateName,
                                    onSaved: (String val) {
                                      setState(() {
                                        _firstName = val;
                                        _firstNameController.text = val;
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
                                    validator: RegisterAdditional.validateName,
                                    controller: _lastNameController,
                                    onSaved: (String val) {
                                      _lastName = val;
                                      _lastNameController.text = val;
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
                            validator: RegisterAdditional.validateEmail,
                            controller: _emailController,
                            onSaved: (String val) {
                              _emailController.text = val;
                              _email = val;
                            },
                            
                            decoration: InputDecoration(
                                hintText: "Email Address",
                                labelText: "Email address", 
                                 suffixIcon: Icon(Icons.email)), 
                                ),
                        SizedBox(
                          height: distanceOfElement,
                        ),

                       (dataBridge.getRoleList().name.toLowerCase() == "owner") ?TextFormField(
                            controller: _picPhoneNumberController,
                            onSaved: (String val) {
                              _picPhoneNumberController.text = val;
                              _picPhoneNumber = val;
                            },
                            decoration: InputDecoration(
                                hintText: "PIC Phone Contact",
                                labelText: "PIC Phone Contact", 
                                suffixIcon: Icon(Icons.phone))) : Container(), 

                        TextFormField(
                            validator: RegisterAdditional.validateName,
                            controller: _phoneController,
                            onSaved: (String val) {
                              _phone = val;
                              _phoneController.text = val;
                            },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                hintText: "Phone Number", labelText: "Phone Number", suffixIcon: Icon(Icons.phone_android)), 
                                ),
                        SizedBox(
                          height: distanceOfElement,
                        ),
                        TextFormField(
                            obscureText: _obscureText,
                            validator: RegisterAdditional.validateName,
                            controller: _passwordController,
                            onSaved: (String val) {
                              _password = val;
                              _passwordController.text = val;
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
                            validator: RegisterAdditional.validateName,
                            controller: _repeatPasswordController,
                            onSaved: (String val) {
                              _retypePassword = val;
                              _repeatPasswordController.text = val;
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
                              FocusScope.of(context)
                                  .requestFocus(new FocusNode());
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
                        "Hi, ${_firstName}\nPlease Add Your Photo",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 200,
                          color: Colors.grey[300],
                          child: (photo == null)
                              ? Icon(
                                  Icons.image,
                                  size: 80,
                                )
                              : Image.file(
                                  photo,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Color(0xffd45500),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Take Photo",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          bool takePhotoSource = false;
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Choose Action Photo"),
                                  content: Text(
                                      "Please choose action to take pictrue"),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        takePhotoSource = true;
                                        CameraUtil()
                                            .takePicture(
                                                fromCamera: takePhotoSource)
                                            .then((onValue) {
                                          setState(() {
                                            photo = File(onValue.toString());
                                          });
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text("Camera"),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        takePhotoSource = false;
                                        CameraUtil()
                                            .takePicture(
                                                fromCamera: takePhotoSource)
                                            .then((onValue) {
                                          setState(() {
                                            photo = File(onValue.toString());
                                          });
                                        });

                                        Navigator.pop(context);
                                      },
                                      child: Text("Gallery"),
                                    )
                                  ],
                                );
                              });
                        },
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
                            print("register");
                            registerUser();
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
        ));
  }

  void registerUser() {
    final dataRegister = RegisterRequest(
        accessKey: Constants.getAccessKey(),
        address: "Address",
        description: "Description",
        email: _emailController.text,
        file: photo.path,
        name: _firstNameController.text + _lastNameController.text,
        password: _password,
        phonenumber: _phoneController.text.toString(),
        role: _userType);
        print(dataRegister.toJson());
    // registerBloc.add(RegisterUser(registerData: dataRegister));
  }
}
