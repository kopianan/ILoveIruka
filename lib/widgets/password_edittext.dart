import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordEditText extends StatefulWidget {
  const PasswordEditText({
    Key key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.textEditingController,
    this.validator,
    this.onSave,
    this.textInputType,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String hintText;
  final String labelText;
  final IconData prefixIcon;
  final Function validator;
  final TextInputType textInputType;
  final Function onSave;

  @override
  _PasswordEditTextState createState() => _PasswordEditTextState();
}

class _PasswordEditTextState extends State<PasswordEditText> {
  bool _obscureText;

  @override
  void initState() {
    _obscureText = false;
    super.initState();
  }

  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      validator: widget.validator,
      obscureText: _obscureText,
      onSaved: widget.onSave,
      keyboardType: (widget.textInputType == null) ? TextInputType.text : widget.textInputType,
      decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon),
          suffix: InkWell(
            child: Icon((_obscureText == false) ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash),
            onTap: () {
              toggle();
            },
          ),
          hintText: "${widget.hintText}",
          labelText: "${widget.labelText}",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
