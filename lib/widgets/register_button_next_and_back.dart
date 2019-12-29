
import 'package:flutter/material.dart';

class RegisterButtonNextAndBack extends StatelessWidget {
  const RegisterButtonNextAndBack({Key key, this.onButtonPressed, this.buttonColor, this.buttonText}) : super(key: key);

  final Function onButtonPressed;
  final Color buttonColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: buttonColor,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {
          onButtonPressed();
        },
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
