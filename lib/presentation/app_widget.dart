import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/splah_screen/splash_screen.dart';
import 'package:i_love_iruka/routes/router.dart';
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
      child: BlocProvider(
        create: (context) => getIt<AuthenticationBloc>()
          ..add(AuthenticationEvent.checkAuthentication()),
        child: GetMaterialApp(
          title: 'I Love Iruka',
          getPages: navigatorPages,
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
          initialRoute: SplashScreen.TAG,
        ),
      ),
    );
  }
}
