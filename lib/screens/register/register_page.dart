import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_g.dart';
import 'package:i_love_iruka/util/camera_util.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterBlocBloc registerBlocBloc;
  File imageFile = null;
  // Initially password is obscure
  bool _obscureText = true;
  String _firstName;
  String _lastName;
  String _email;
  String _phone;
  String _password;
  String _retypePassword;
  String _userType;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool _autoValidate = false;
  Repository _repository = Repository();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String dropDownValue;
  Future<RolesModel> _getRolesOff;
  static const double distanceOfElement = 15.0;
  @override
  void initState() {
    _getRolesOff = _repository.getRolesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Consumer<DataBridge>(
        builder: (context, dataBridge, _) => SingleChildScrollView(
          child: BlocListener(
            bloc: registerBlocBloc,
            listener: (context, registerBloc) {
              if (registerBlocBloc is RegisterComplete) {
                dataBridge.setFileName(null);
              }
            },
            child: BlocBuilder<RegisterBlocBloc, RegisterBlocState>(
              bloc: registerBlocBloc,
              builder: (context, state) {
                return buildInitialRegister(dataBridge);
              },
            ),
          ),
        ),
      )),
    );
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

  void registerUser(BuildContext context, DataBridge dataBridge) {
    final _registerBloc = BlocProvider.of<RegisterBlocBloc>(context);
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      if (_password != _retypePassword) {
        Fluttertoast.showToast(msg: "Password doesn't match");
      } else if (_userType == null) {
        Fluttertoast.showToast(msg: "Choose User Type");
      } else {
        final dataRegister = RegisterRequest(
            accessKey: Constants.getAccessKey(),
            address: "Alamat",
            description: "Description",
            email: "anan1@gmail.com",
            file: dataBridge.getFileName(),
            name: "Nama cuk",
            password: "1234",
            phonenumber: "Phone number",
            role: "ROLE ID");
        _registerBloc.add(RegisterUser(registerData: dataRegister));
      }
    } else {
//    If all data are not valid thezn start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  Container buildInitialRegister(DataBridge dataBridge) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
            child: GestureDetector(
              onTap: () {
                final image = CameraUtil().takePicture(fromCamera: true);

                image.then((onValue) {
                  setState(() {
                    dataBridge.setFileName(onValue);
                  });
                });
              },
              child: (dataBridge.getFileName() == null)
                  ? Icon(
                      Icons.photo,
                      size: 80,
                    )
                  : Image.file(
                      File(dataBridge.getFileName()),
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          buildFormRegister(),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 20),
            child: RaisedButton(
              color: Colors.white,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {
                registerUser(context, dataBridge);
              },
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  side: BorderSide(color: Colors.blue)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Form buildFormRegister() {
    return Form(
      autovalidate: _autoValidate,
      key: _formKey,
      child: Column(
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
                        _firstName = val;
                      },
                      decoration: InputDecoration(
                          hintText: "First Name", labelText: "First Name")),
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
                          hintText: "Last Name", labelText: "Last Name")),
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
                  hintText: "Email Address", labelText: "Email address")),
          SizedBox(
            height: distanceOfElement,
          ),
          TextFormField(
              validator: validateName,
              onSaved: (String val) {
                _phone = val;
              },
              keyboardType: TextInputType.phone,
              decoration:
                  InputDecoration(hintText: "Phone", labelText: "Phone")),
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
                      _toggle();
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
                      _toggle();
                    },
                  ),
                  hintText: "Repeat Password",
                  labelText: "Repeat Password")),
          SizedBox(
            height: distanceOfElement,
          ),
          buildDropdownRole(),
          SizedBox(
            height: distanceOfElement,
          ),
        ],
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
            return DropdownButton();
            break;
          case ConnectionState.active:
            // TODO: Handle this case.
            break;
          case ConnectionState.done:
            return DropdownButton(
              isExpanded: true,
              onChanged: (val) {
                setState(() {
                  dropDownValue = val;
                  _userType = val;
                });
              },
              value: dropDownValue,
              hint: Text("User Type"),
              items: roles.roleList.map((f) {
                return DropdownMenuItem(
                  child: Text(f.name),
                  value: f.name,
                );
              }).toList(),
            );
            break;
        }
      },
    );
  }

  Container buildInputDropDown(String label) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 30.0,
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          new Expanded(
            child: DropdownButton(
              hint: Text("Category"),
            ),
          )
        ],
      ),
    );
  }

  Container buildInputTextField(String label) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 30.0,
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          new Expanded(
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: '$label',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
