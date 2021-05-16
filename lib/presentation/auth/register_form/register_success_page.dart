import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_outline.dart';

class RegisterSuccessPage extends StatefulWidget {
  static final String TAG = '/register_success_page';
  @override
  _RegisterSuccessPageState createState() => _RegisterSuccessPageState();
}

class _RegisterSuccessPageState extends State<RegisterSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Successful Register",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Image.asset('images/assets/complete.jpg'),
              SizedBox(height: 20),
              Text(
                "Please verify your email. Go to your email and click the link to verify the account",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              BtnPrimaryBlue(
                text: "Back",
                onPressed: () {
                  Get.back(closeOverlays: true);
                },
              )
            ]),
      )),
    );
  }
}
