import 'package:flutter/material.dart';
import 'package:i_love_iruka/presentation/auth/register_form/widgets/txt_regular_password.dart';
import 'package:i_love_iruka/presentation/auth/widgets/password.dart';
import 'package:i_love_iruka/presentation/widgets/appbar_transparent_back.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/txt_regular_text_field.dart';
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
                        TxtRegularTextField(
                          label: "Full Name",
                          hint: "Input your name here",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TxtRegularTextField(
                          label: "Email",
                          hint: "Input your email",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TxtRegularPassword(
                          hint: "Input your password min. 6 chars",
                          label: "Password",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TxtRegularPassword(
                          hint: "Fill confirmation with the same password",
                          label: "Confirmation Password",
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
                        BtnPrimaryBlue(text: "Log in"),
                      ],
                    ),
                  ),
                ],
              ),
              AppBarTransparentBack(function: () {
                Navigator.pop(context, true);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
