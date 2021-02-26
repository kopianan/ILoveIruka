import 'package:flutter/material.dart';

class BtnPrimaryBlueLoading extends StatelessWidget {
  BtnPrimaryBlueLoading();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        textColor: Colors.black,
        splashColor: Colors.white,
        color: Color(0xFFE0E0E0),
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
