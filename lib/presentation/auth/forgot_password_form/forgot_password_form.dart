import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i_love_iruka/presentation/auth/widgets/email_address.dart';
import 'package:i_love_iruka/routes/router.gr.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
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
                  "Forgot\nPassword ?",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: InkWell(
                    onTap: () {
                      Navigator.pop(context, true);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: <Widget>[
                EmailAddress(
                  controller: emailController,
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Enter the email address associated with your account",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  textColor: Colors.white,
                  // padding: EdgeInsets.symmetric(horizontal: 10),
                  onPressed: () {
                    ExtendedNavigator.of(context).pushNamed(Routes.forgotPaswordSuccessNotif); 
                  },
                  splashColor: Colors.white,
                  color: Color(0xff2A7FD5),
                  minWidth: double.infinity,
                  height: 50,
                  elevation: 8,
                  highlightElevation: 2,
                  child: Text("Reset Password"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
