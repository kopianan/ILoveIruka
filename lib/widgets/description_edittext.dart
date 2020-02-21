import 'package:flutter/material.dart';

class DescriptionEditText extends StatelessWidget {
  const DescriptionEditText(
      {Key key,
      @required this.hintText,
      @required this.labelText,
      this.prefixIcon,
      @required this.textEditingController,
      this.validator,
      this.onSave,
      this.suffixText,
      this.textInputType,
      this.minLines,
      this.maxLines})
      : super(key: key);

  final Function onSave;
  final TextEditingController textEditingController;
  final String hintText;
  final String labelText;
  final IconData prefixIcon;
  final Function validator;
  final TextInputType textInputType;
  final String suffixText;
  final int minLines;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.top,
      controller: textEditingController,
      validator: validator,
      keyboardType: (textInputType == null) ? TextInputType.text : textInputType,
      onSaved: onSave,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
          prefixIcon: (prefixIcon == null) ? null : Icon(prefixIcon),
          suffixText: (suffixText == null) ? null : suffixText,
          hintText: "$hintText",
          labelText: "$labelText",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
