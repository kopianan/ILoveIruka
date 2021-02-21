import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomInputText extends StatelessWidget {
  CustomInputText(
      {@required this.controller,
      @required this.validator,
      @required this.focusNode,
      @required this.textInputAction,
      @required this.onFieldSubmited});

  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final ValueChanged onFieldSubmited;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        validator: (str) {
          return validator(str);
        },
        textInputAction: textInputAction,
        onFieldSubmitted: (str) {
          onFieldSubmited(str);
        },
        focusNode: focusNode,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(letterSpacing: 1, fontSize: 18),
        decoration: InputDecoration(
            labelText: "Email",
            contentPadding: EdgeInsets.only(bottom: 5),
            isDense: true,
            prefixIcon: Icon(Icons.email),
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
