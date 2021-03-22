import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_love_iruka/presentation/auth/signin_signout/signin_signout_page.dart';
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet_page.dart';
import 'package:i_love_iruka/presentation/membership/membership_card_list.dart';
import 'package:i_love_iruka/presentation/splah_screen/splash_screen.dart';
import 'package:i_love_iruka/routes/router.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snp) {
          if (snp.connectionState == ConnectionState.waiting) {
            return GetMaterialApp(
              title: 'I Love Iruka',
              getPages: navigatorPages,
              debugShowCheckedModeBanner: false,
              theme: theme(),
              // initialRoute: SplashScreen.TAG,
              home: Scaffold(
                body: Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            );
          } else if (snp.connectionState == ConnectionState.done) {
            return GetMaterialApp(
              title: 'I Love Iruka',
              getPages: navigatorPages,
              debugShowCheckedModeBanner: false,
              theme: theme(),
              // initialRoute: SplashScreen.TAG,
              home: AddNewPetPage(),
            );
          } else {
            return GetMaterialApp(
              title: 'I Love Iruka',
              getPages: navigatorPages,
              debugShowCheckedModeBanner: false,
              theme: theme(),
              // initialRoute: SplashScreen.TAG,
              home: Scaffold(
                body: Container(),
              ),
            );
          }
        });
  }
}

ThemeData theme() {
  return ThemeData(
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black54),
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.black54, fontSize: 20),
          )),
      tabBarTheme: TabBarTheme(
          // labelStyle: TextStyle(color: Colors.black),

          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.black),
      inputDecorationTheme: inputDecoratationTheme(),
      textTheme: GoogleFonts.notoSansTextTheme(
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
