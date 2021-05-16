import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_love_iruka/presentation/auth/register_form/register_success_page.dart';

import 'package:i_love_iruka/presentation/splah_screen/splash_screen.dart';
import 'package:i_love_iruka/routes/router.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/add_new_pet_page2.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) {
        print('on message $message');
      },
      onResume: (Map<String, dynamic> message) {
        print('on resume $message');
      },
      onLaunch: (Map<String, dynamic> message) {
        print('on launch $message');
      },
    );
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.getToken().then((token) {
      print(token);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'I Love Iruka',
      getPages: navigatorPages,
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SplashScreen.TAG,
      home: SplashScreen(),
      // home: AddNewPetPage2(),
    );
  }

  ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black87),
            textTheme: TextTheme(
              headline6: TextStyle(color: Colors.black87, fontSize: 20),
            )),
        tabBarTheme: TabBarTheme(
            // labelStyle: TextStyle(color: Colors.black),

            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black),
        inputDecorationTheme: inputDecoratationTheme(),
        textTheme: GoogleFonts.nunitoTextTheme(
          TextTheme(
            // bodyText1: TextStyle(fontSize: 12),
            bodyText2: TextStyle(
              fontSize: 13,
            ), //default text
          ),
        ),
        primaryColor: Color(0xff558dc5),
        iconTheme: IconThemeData(color: Colors.black),
        errorColor: Colors.red);
  }
}

InputDecorationTheme inputDecoratationTheme() {
  return InputDecorationTheme(
      errorMaxLines: 1,
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.all(15),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      alignLabelWithHint: true,
      border: OutlineInputBorder(
          gapPadding: 0,
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none));
}
