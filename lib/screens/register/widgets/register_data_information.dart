
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';
import 'package:provider/provider.dart';

import '../register_additional.dart';

class RegisterDataInformation extends StatefulWidget {
  const RegisterDataInformation({
    Key key,
    @required this.distanceOfElement,
    @required RegisterAdditional registerAdditional,
    @required this.c,
    @required this.dataBridge,
  })  : _registerAdditional = registerAdditional,
        super(key: key);

  final double distanceOfElement;

  final RegisterAdditional _registerAdditional;
  final DataBridge dataBridge; 
  final ScrollController c;

  @override
  _RegisterDataInformationState createState() =>
      _RegisterDataInformationState();
}

class _RegisterDataInformationState extends State<RegisterDataInformation> {
  bool _autoValidate = false;
  bool _obscureText = true;
  String _firstName;
  String _lastName;
  String _email;
  String _phone;
  String _password;
  String _retypePassword;
  String _userType;
  String _picPhoneNumber;
  String _description;
  String _address;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _firstNameController = TextEditingController();
  var _lastNameController = TextEditingController();
  var _emailController = TextEditingController();
  var _phoneController = TextEditingController();
  var _passwordController = TextEditingController();
  var _repeatPasswordController = TextEditingController();
  var _picPhoneNumberController = TextEditingController();
  var _descriptionController = TextEditingController();
  var _addressController = TextEditingController();

  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  validateRegisterUser(DataBridge dataBridge) {
     int page ; 
       (dataBridge.getRoleList().name.toString().toLowerCase().contains("groomer")) ? page = 2: page = 3 ; 

        widget._registerAdditional.backAnimated(context, widget.c, page);
//     if (_formKey.currentState.validate()) {
//       _formKey.currentState.save();

//       if (_password != _retypePassword) {
//         Fluttertoast.showToast(msg: "Password doesn't match");
//       } else {
//           (dataBridge.getRoleList().name.toString().toLowerCase().contains("groomer")) ? page = 2: page = 3 ; 

//         widget._registerAdditional.backAnimated(context, widget.c, page);
//       }
//     } else {
// //    If all data are not valid thezn start auto validation.
//       setState(() {
//         _autoValidate = true;
//       });
//     }
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardAvoider(
      autoScroll: true,
      child: Consumer<DataBridge>(
              builder :(_,dataBridge, __)  => Container(
            child: Form(
          autovalidate: _autoValidate,
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Text(
                  "Fill Your Information",
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
                      height: widget.distanceOfElement,
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
                      height: widget.distanceOfElement,
                    ),
                    (widget.dataBridge.getRoleList().name.toString().toLowerCase() ==
                            "owner")
                        ? TextFormField(
                            controller: _picPhoneNumberController,
                            onSaved: (String val) {
                              _picPhoneNumberController.text = val;
                              _picPhoneNumber = val;
                            },
                            decoration: InputDecoration(
                                hintText: "PIC Phone Contact",
                                labelText: "PIC Phone Contact",
                                suffixIcon: Icon(Icons.phone)))
                        : Container(),
                    TextFormField(
                      validator: RegisterAdditional.validateName,
                      controller: _phoneController,
                      onSaved: (String val) {
                        _phone = val;
                        _phoneController.text = val;
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          labelText: "Phone Number",
                          suffixIcon: Icon(Icons.phone_android)),
                    ),
                    SizedBox(
                      height: widget.distanceOfElement,
                    ),
                    TextFormField(
                      minLines: 2,
                      maxLines: 3,
                      controller: _addressController,
                      onSaved: (String val) {
                        _address = val;
                        _addressController.text = val;
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Address",
                          labelText: "Address",
                          suffixIcon: Icon(Icons.location_city)),
                    ),
                    SizedBox(
                      height: widget.distanceOfElement,
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
                      height: widget.distanceOfElement,
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
                      height: widget.distanceOfElement,
                    ),
                    (widget.dataBridge.getRoleList().name.toString().toLowerCase() ==
                            "groomer")
                        ? TextFormField(
                            minLines: 3,
                            maxLines: 5,
                            controller: _descriptionController,
                            onSaved: (String val) {
                              _description = val;
                              _descriptionController.text = val;
                            },
                            decoration: InputDecoration(
                                suffixIcon: Icon(FontAwesomeIcons.infoCircle),
                                hintText: "Describe yourself as Groomer",
                                labelText: "Description"))
                        : Container(),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Text("Back"),
                        onPressed: () {
                          widget._registerAdditional
                              .backAnimated(context, widget.c, 0);
                        },
                      ),
                      FloatingActionButton(
                        child: Icon(FontAwesomeIcons.arrowRight),
                        onPressed: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          validateRegisterUser(dataBridge);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
        )),
      ),
    );
  }
}