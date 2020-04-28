import 'package:flutter/material.dart';

class TxtRegularPassword extends StatefulWidget {
  TxtRegularPassword({@required this.controller, this.validator, this.label, this.hint});
  final TextEditingController controller;
  final Function validator;
  final String label; 
  final String hint ; 

  @override
  _TxtRegularPasswordState createState() => _TxtRegularPasswordState();
}

class _TxtRegularPasswordState extends State<TxtRegularPassword> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: _obsecureText,
        controller: widget.controller,
        validator: widget.validator,
        keyboardType: TextInputType.text,
        style: TextStyle(letterSpacing: 1),
        decoration: InputDecoration(
            labelText: "${widget.label}",
            contentPadding: EdgeInsets.only(bottom: 5),
            isDense: true,
            hintText: "${widget.hint}",
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
