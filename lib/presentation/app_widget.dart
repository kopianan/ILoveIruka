import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';
import 'package:i_love_iruka/routes/router.gr.dart';
import 'package:provider/provider.dart';

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
    final textTheme = Theme.of(context).textTheme;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        )
      ],
      child: MaterialApp(
        title: 'I Love Iruka',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          inputDecorationTheme:
              InputDecorationTheme(labelStyle: TextStyle(color: Colors.blue)),
          textTheme: GoogleFonts.montserratTextTheme(textTheme),
          primaryColor: Color(0xff558dc5),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          errorColor: Colors.red,
        ),
        home: WelcomeScreen(),
        builder: ExtendedNavigator<Router>(router: Router()),
      ),
    );
  }
}
