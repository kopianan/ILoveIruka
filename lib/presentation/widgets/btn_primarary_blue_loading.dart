import 'package:flutter/material.dart';

class BtnPrimaryBlueLoading extends StatelessWidget {
  BtnPrimaryBlueLoading();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        textColor: Colors.white,
        splashColor: Colors.white,
        color: Color(0xff2A7FD5),
        minWidth: double.infinity,
        height: 50,
        elevation: 8,
        highlightElevation: 2,
        child: Center(
          child: CircularProgressIndicator(),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
