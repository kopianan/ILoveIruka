import 'package:flutter/material.dart';

class BtnPrimaryBlue extends StatelessWidget {
  BtnPrimaryBlue({@required this.text, this.onPressed, this.context}); 
  final String text;
  final Function onPressed;
  final BuildContext context; 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        textColor: Colors.white,
        // padding: EdgeInsets.symmetric(horizontal: 10),
        onPressed: () {
          onPressed();
        },
        splashColor: Colors.white,
        color: Color(0xff2A7FD5),
        minWidth: double.infinity,
        height: 50,

        elevation: 8,
        highlightElevation: 2,
        child: Text(
          "$text",
          style: TextStyle(fontSize: 20),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
