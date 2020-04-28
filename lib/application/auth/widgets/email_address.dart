import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EmailAddress extends StatelessWidget {
  EmailAddress({@required this.controller, this.validator});
  final TextEditingController controller;
  final Function validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:    TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: TextInputType.emailAddress,
                  style: TextStyle(letterSpacing: 1, fontSize: 18),
                  decoration: InputDecoration(
                      labelText: "Email",
                      contentPadding: EdgeInsets.only(bottom: 5),
                      isDense: true,
                      prefixIcon: Icon(MdiIcons.email),
                      hintText: "Enter email address",
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      errorMaxLines: 1,
                      errorStyle: TextStyle(height: 0.5),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      border: UnderlineInputBorder()),
                ),
  
    );
  }
}
