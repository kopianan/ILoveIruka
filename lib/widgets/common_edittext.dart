import 'package:flutter/material.dart';

class CommonEditText extends StatelessWidget {
  const CommonEditText({
    Key key,
    @required this.hintText,
    @required this.labelText,
     this.prefixIcon,
    @required this.textEditingController,
    this.validator,
    this.onSave,
    this.suffixText,
    this.textInputType,
  }) : super(key: key);

  final Function onSave;
  final TextEditingController textEditingController;
  final String hintText;
  final String labelText;
  final IconData prefixIcon;
  final Function validator;
  final TextInputType textInputType;
  final String suffixText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: validator,
      keyboardType: (textInputType == null) ? TextInputType.text : textInputType,
      onSaved: onSave,
      decoration: InputDecoration(
          prefixIcon:(prefixIcon == null) ? null :  Icon(prefixIcon),
          suffixText: (suffixText == null) ? null : suffixText,
          hintText: "$hintText",
          labelText: "$labelText",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
