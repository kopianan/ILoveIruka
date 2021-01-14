import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/presentation/auth/register_form/register_form.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';

class WelcomeScreen extends StatefulWidget {
  static final String TAG = '/welcome_screen_page';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // padding: EdgeInsets.zero,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              ClipPath(
                  clipper: CurvedClipper(),
                  child: Image.asset(
                    'images/dev_images/background_petting.png',
                  )),
              Positioned(
                // top: 30,
                // bottom: 10,
                width: MediaQuery.of(context).size.width,
                child: Container(
                    child: Image.asset(
                  'images/dev_images/petting.png',
                )),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Welcome to I Love Iruka",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Here we will help you to manage your pets like medical checkup, saloon, pet care, and another services",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: BtnPrimaryBlue(
                      text: "Sign in",
                      onPressed: () {
                        Get.toNamed(SignInForm.TAG);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RegisterForm.TAG);
                    },
                    child: Text(
                      "Create an account",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffEE2424)),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
