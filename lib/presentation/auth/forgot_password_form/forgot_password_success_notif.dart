import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ForgotPaswordSuccessNotif extends StatefulWidget {
  static const String TAG = '/forgot_password_success_notif_page';

  @override
  _ForgotPaswordSuccessNotifState createState() =>
      _ForgotPaswordSuccessNotifState();
}

class _ForgotPaswordSuccessNotifState extends State<ForgotPaswordSuccessNotif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/dev_images/forgot_password_bg_show.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
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
            body: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        "images/dev_images/forgot_password_image.png",
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Please check your email to create your new password and come back again if the password has been set",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: MaterialButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        onPressed: () {},
                        splashColor: Colors.blue,
                        height: 50,
                        elevation: 8,
                        highlightElevation: 2,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.email, color: Colors.white),
                            SizedBox(
                              width: 7,
                            ),
                            Text("Resend"),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.white, width: 2)),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
