import 'package:flutter/material.dart';

class BtnPrimaryOutline extends StatelessWidget {
  BtnPrimaryOutline({@required this.text, this.onPressed});
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
          textColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 10,),
          onPressed: () {
            onPressed();
          },
          splashColor: Colors.white,
          // color: Colors.red,
          minWidth: double.infinity,
          elevation: 8,
          height: 50,
          highlightElevation: 2,
          child: Text(
            "$text",
            style: TextStyle(color: Color(0xffEE2424), fontSize: 20),
          ),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xffEE2424), width: 2))),
    );
  }
}
