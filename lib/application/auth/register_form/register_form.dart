import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  List<String> dropdownList = ["Groomer", "Customer"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 300,
                        child: Image.asset(
                          'images/dev_images/signin_decoration.png',
                          alignment: Alignment.bottomRight,
                          fit: BoxFit.fitWidth,
                          width: double.infinity,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, top: 80),
                        child: Text(
                          "Create Your\nNew Account",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(letterSpacing: 1),
                          decoration: InputDecoration(
                              labelText: "Full Name",
                              contentPadding: EdgeInsets.only(bottom: 5),
                              isDense: true,
                              hintText: "Input your name here",
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              errorMaxLines: 1,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              border: UnderlineInputBorder()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          style: TextStyle(letterSpacing: 1),
                          decoration: InputDecoration(
                              labelText: "Email",
                              contentPadding: EdgeInsets.only(bottom: 5),
                              isDense: true,
                              hintText: "Input your email",
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              errorMaxLines: 1,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              border: UnderlineInputBorder()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          style: TextStyle(letterSpacing: 1),
                          decoration: InputDecoration(
                              labelText: "Password",
                              contentPadding: EdgeInsets.only(bottom: 5),
                              isDense: true,
                              hintText: "Input your password min. 6 chars",
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              errorMaxLines: 1,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              border: UnderlineInputBorder()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          style: TextStyle(letterSpacing: 1),
                          decoration: InputDecoration(
                              labelText: "Confirmation Password",
                              contentPadding: EdgeInsets.only(bottom: 5),
                              isDense: true,
                              hintText:
                                  "Fill confirmation with the same password",
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              errorMaxLines: 1,
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 2)),
                              border: UnderlineInputBorder()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          child: DropdownButton(
                            underline: Divider(
                              thickness: 2,
                              height: 2,
                            ),
                            hint: Text(
                              "Choose account type",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            isExpanded: true,
                            items: dropdownList
                                .map((f) => DropdownMenuItem(
                                      child: Text(f),
                                      value: f,
                                    ))
                                .toList(),
                            onChanged: (val) {},
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          textColor: Colors.white,
                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          onPressed: () {},
                          splashColor: Colors.white,
                          color: Color(0xff2A7FD5),
                          minWidth: double.infinity,
                          height: 50,

                          elevation: 8,
                          highlightElevation: 2,
                          child: Text("Log in"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
