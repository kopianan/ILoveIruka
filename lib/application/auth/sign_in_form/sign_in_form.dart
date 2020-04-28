import 'package:flutter/material.dart';
import 'package:i_love_iruka/application/auth/register_form/register_form.dart';
import 'package:i_love_iruka/application/auth/widgets/email_address.dart';
import 'package:i_love_iruka/application/auth/widgets/password.dart';
import 'package:i_love_iruka/application/widgets/appbar_transparent_back.dart';
import 'package:i_love_iruka/application/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/application/widgets/btn_primary_outline.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: Image.asset(
                      'images/dev_images/signin_decoration.png',
                      alignment: Alignment.bottomRight,
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 80),
                    child: Text(
                      "Welcome\nBack",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              bottomContent(context)
            ]),
            AppBarTransparentBack(function: () {
              Navigator.pop(context, true);
            }),
          ],
        ),
      ),
    );
  }

  Widget bottomContent(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: <Widget>[
            EmailAddress(
              controller: emailController,
            ),
            SizedBox(
              height: 20,
            ),
            Password(
              controller: passwordController,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.forgotPasswordForm);
                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffEE2424)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BtnPrimaryBlue(
              text: "Log in",
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.dashboardPage);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Divider(
                    height: 2,
                    color: Colors.grey,
                    thickness: 1,
                  )),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR")),
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BtnPrimaryOutline(
              text: "Sign up",
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.registerForm);
              },
            )
          ],
        ),
      ),
    );
  }
}

class GreenClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, size.height / 4.25);
    var firstControlPoint = new Offset(size.width / 4, size.height / 3);
    var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 4 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 3 - 40);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return null;
  }
}
