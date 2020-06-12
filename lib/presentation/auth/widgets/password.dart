import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Password extends StatefulWidget {
  Password({@required this.controller, this.validator});
  final TextEditingController controller;
  final Function validator;

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: _obsecureText,
        controller: widget.controller,
        validator: widget.validator,
        keyboardType: TextInputType.text,
        style: TextStyle(letterSpacing: 1, fontSize: 18),
        decoration: InputDecoration(
            labelText: "Password",
            contentPadding: EdgeInsets.only(bottom: 5),
            isDense: true,
            prefixIcon: Icon(MdiIcons.lock),
            hintText: "Password",
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            errorMaxLines: 1,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  _obsecureText = !_obsecureText;
                });
              },
              child: Icon(
                  !_obsecureText ? Icons.visibility : Icons.visibility_off),
            ),
            errorStyle: TextStyle(height: 0.5),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2)),
            border: UnderlineInputBorder()),
      ),
    );
  }
}
