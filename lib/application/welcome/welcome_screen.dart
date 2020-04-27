import 'package:flutter/material.dart';
import 'package:i_love_iruka/application/auth/sign_in_form/sign_in_form.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
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
              height: 60,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Lorem Ipsum Ldkfj DFKJ iidkj df",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "I've two spoiled dogs and my fiance is crazy about them. He can't stand an idea of leaving these two little cratures behind. We're",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      textColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInForm()));
                      },
                      splashColor: Colors.white,
                      color: Colors.red,
                      minWidth: double.infinity,
                      elevation: 8,
                      highlightElevation: 2,
                      child: Text("Sign In"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Create an account",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
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
