import 'package:flutter/material.dart';

class TxtRegularTextField extends StatelessWidget {
  TxtRegularTextField({@required this.label, @required this.hint, this.controller}); 

  final String label; 
  final String hint ; 
  final TextEditingController controller; 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: TextStyle(letterSpacing: 1),
        decoration: InputDecoration(
            labelText: "$label",
            contentPadding: EdgeInsets.only(bottom: 5),
            isDense: true,
            hintText: "$hint",
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            errorMaxLines: 1,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2)),
            border: UnderlineInputBorder()),
      ),
    );
  }
}
