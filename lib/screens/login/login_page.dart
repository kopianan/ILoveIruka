import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xffF6F5F8),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 70, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "Welcome!",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Log in or create your account"),
                        ),
                        Container(
                          child: Column(children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            buildLoginEnterEmail(),
                            SizedBox(
                              height: 20,
                            ),
                            buildLoginEnterPassword(),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Text("You forgot password ? "),
                              alignment: Alignment.centerRight,
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          child: ClipPolygon(
                            sides: 6,
                            borderRadius: 5.0, // Default 0.0 degrees
                            rotate: 90.0, // Default 0.0 degrees

                            boxShadows: [
                              PolygonBoxShadow(
                                  color: Colors.black, elevation: 1.0),
                              // PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
                            ],
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(context, "/dashboard");
                              },
                              child: Container(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                                // Add box decoration
                                decoration: BoxDecoration(
                                  // Box decoration takes a gradient
                                  gradient: LinearGradient(
                                    // Where the linear gradient begins and ends
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    // Add one stop for each color. Stops should increase from 0 to 1
                                    stops: [0.1, 0.5, 0.7, 0.9],
                                    colors: [
                                      // Colors are easy thanks to Flutter's Colors class.
                                      Colors.indigo[800],
                                      Colors.indigo[700],
                                      Colors.indigo[600],
                                      Colors.indigo[400],
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/register");
                      },
                      child: Text("Don't Have Account ? Sign Up"),
                    )),
              ],
            ),
          ),
        ));
  }

  Container buildLoginEnterPassword() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Icon(
              Icons.lock_open,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 30.0,
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          new Expanded(
            child: TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                ),
                border: InputBorder.none,
                labelText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildLoginEnterEmail() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 30.0,
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          new Expanded(
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
// BeveledRectangleBorder