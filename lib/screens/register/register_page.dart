import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';
import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_g.dart';
import 'package:i_love_iruka/util/camera_util.dart';
import 'package:i_love_iruka/util/constants.dart';


class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterBlocBloc registerBlocBloc;
  File imageFile = null;
  Repository _repository = Repository();
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
          child: SingleChildScrollView(
        child: BlocBuilder<RegisterBlocBloc, RegisterBlocState>(
          bloc: registerBlocBloc,
          builder: (context, state) {
            return buildInitialRegister();
          },
        ),
      )),
    );
  }

  Container buildInitialRegister() {
    final _registerBloc = BlocProvider.of<RegisterBlocBloc>(context);

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
                    imageFile = onValue;
                    print(imageFile.toString());
                  });
                });
              },
              child: (imageFile == null)
                  ? Icon(
                      Icons.photo,
                      size: 80,
                    )
                  : Image.file(
                      imageFile,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
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
                          decoration: InputDecoration(hintText: "First Name")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: TextFormField(
                          decoration: InputDecoration(hintText: "Last Name")),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: distanceOfElement,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email Address", labelText: "Email address")),
              SizedBox(
                height: distanceOfElement,
              ),
              TextFormField(decoration: InputDecoration(hintText: "Phone")),
              SizedBox(
                height: distanceOfElement,
              ),
              TextFormField(decoration: InputDecoration(hintText: "Password")),
              SizedBox(
                height: distanceOfElement,
              ),
              TextFormField(
                  decoration: InputDecoration(hintText: "Repeat Password")),
              SizedBox(
                height: distanceOfElement,
              ),
              buildDropdownRole(),
              SizedBox(
                height: distanceOfElement,
              ),
            ],
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 20),
            child: RaisedButton(
              color: Colors.white,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {
                final dataRegister = RegisterRequest(
                    accessKey: Constants().getAccessKey(),
                    address: "Alamat",
                    description: "Description",
                    email: "anan@gmail.com",
                    file: "Alamat file",
                    name: "Nama cuk",
                    password: "1234",
                    phonenumber: "Phone number",
                    role: "ROLE ID");
                _registerBloc.add(RegisterUser(registerData: dataRegister));
              },
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  side: BorderSide(color: Colors.blue)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.check_circle),
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
                  print(
                      roles.roleList.firstWhere((test) => test.name == val).id);
                });
              },
              value: dropDownValue,
              hint: Text("Hint Text"),
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
