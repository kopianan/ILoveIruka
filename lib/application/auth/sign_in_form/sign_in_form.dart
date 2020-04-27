import 'package:flutter/material.dart';
import 'package:i_love_iruka/application/auth/register_form/register_form.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'images/dev_images/signin_decoration.png',
                      alignment: Alignment.bottomRight,
                      fit: BoxFit.fitWidth,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 50),
                    child: Text(
                      "Welcome\nBack",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            bottomContent(context),
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
            TextFormField(
              style: TextStyle(letterSpacing: 2, fontSize: 16),
              decoration: InputDecoration(
                  prefixIcon: Icon(MdiIcons.email),
                  hintText: "Email",
                  errorMaxLines: 1,
                  errorStyle: TextStyle(height: 0.5),
                  border: UnderlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              style: TextStyle(letterSpacing: 2, fontSize: 18),
              decoration: InputDecoration(
                  suffixIcon: InkWell(
                    child: Icon(MdiIcons.eyeOff),
                  ),
                  prefixIcon: Icon(MdiIcons.lock),
                  hintText: "Password",
                  errorMaxLines: 1,
                  errorStyle: TextStyle(height: 0.5),
                  border: UnderlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color:  Color(0xffEE2424)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              
              textColor: Colors.white,
              // padding: EdgeInsets.symmetric(horizontal: 10),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInForm()));
              },
              splashColor: Colors.white,
              color: Color(0xff2A7FD5) ,
              minWidth: double.infinity,
              height: 50,
              
              elevation: 8,
              highlightElevation: 2,
              child: Text("Log in"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
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
            MaterialButton(
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterForm()));
                },
                splashColor: Colors.white,
                // color: Colors.red,
                minWidth: double.infinity,
                elevation: 8,
                 height: 50,
                highlightElevation: 2,
                child: Text(
                  "Sign up ",
                  style: TextStyle(color: Colors.red),
                ),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Color(0xffEE2424), width: 2))),
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
