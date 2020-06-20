import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomPassword extends StatefulWidget {
  CustomPassword({
    @required this.controller,
    @required this.validator,
    @required this.focusNode,
    @required this.textInputAction,
    @required this.onFieldSubmited,
    @required this.hint,
    @required this.label,
    
  });
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final ValueChanged onFieldSubmited;
  final String hint;
  final String label;
  @override
  _CustomPasswordState createState() => _CustomPasswordState();
}

class _CustomPasswordState extends State<CustomPassword> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: _obsecureText,
        controller: widget.controller,
        focusNode: widget.focusNode,
        textInputAction: widget.textInputAction,
        onFieldSubmitted: (string) {
          widget.onFieldSubmited(string);
        },
        validator: widget.validator,
        keyboardType: TextInputType.text,
        style: TextStyle(letterSpacing: 1, fontSize: 18),
        decoration: InputDecoration(
            labelText: widget.label,
            contentPadding: EdgeInsets.only(bottom: 5),
            isDense: true,
            hintText: widget.hint,
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

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key key,
    @required this.controller,
    @required this.validator,
    @required this.focusNode,
    @required this.textInputAction,
    @required this.onFieldSubmited,
    @required this.hint,
    @required this.label,
    @required this.isEnable,
    this.textInputType, 
    this.suffixText, 
    this.minLength
  }) : super(
          key: key,
        );
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final ValueChanged onFieldSubmited;
  final TextInputType textInputType;
  final String hint;
  final String label;
  final bool isEnable;
  final String suffixText;
  final int minLength ; 

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(letterSpacing: 1),
      controller: controller,
      focusNode: focusNode,
      keyboardType: (textInputType == null) ? TextInputType.text:textInputType,
      enabled: isEnable,
      textInputAction: textInputAction,
      minLines: (minLength == null) ? 1 : minLength,
      maxLines: (minLength == null) ? 2 : minLength, 
      onFieldSubmitted: (term) {
        onFieldSubmited(term);
      },
      validator: validator,
      decoration: _inputeTextDecoration(label, hint),
    );
  }

  InputDecoration _inputeTextDecoration(String label, String hint) {
    return InputDecoration(
        labelText: label,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.only(bottom: 1),
        isDense: true,
        suffixIcon: Icon(MdiIcons.pencil),
        hintText: hint,
        suffixText: (suffixText == null) ? null : suffixText,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        errorMaxLines: 1,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2)),
        border: UnderlineInputBorder());
  }
}
