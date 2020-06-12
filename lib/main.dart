import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_love_iruka/presentation/appointment/appointment_form.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';
import 'package:i_love_iruka/presentation/home/account_home/account_page_home.dart';
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/widgets/member_card.dart';
import 'package:i_love_iruka/features/data/dashboard_store.dart';

import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/users/data/user_store.dart';
import 'package:provider/provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'presentation/membership/membership_card_list.dart';

void main() {
  runApp(
    Injector(inject: [
      Inject<UserStore>(() => UserStore()),
      Inject<DashboardStore>(() => DashboardStore())
    ], builder: (context) => MyApp()),
  );
}

// primary
// #558dc5
// #d45500

// secondary color (RGBA)
// #df90b277
// #3cede2d2

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Future dataFuture;
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
        ChangeNotifierProvider(
          create: (context) => DataBridge(),
        ),
        ChangeNotifierProvider(
          create: (context) => RegisterProvider(),
        ),
      ],
      child: MaterialApp(
          title: 'I Love Iruka',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(textTheme),
            primaryColor: Color(0xff558dc5),
            iconTheme: IconThemeData(
              color: Colors.orange,
            ),
            errorColor: Colors.red,
          ),
          home: DashboardPage(),
          // home: StateBuilder<UserStore>(
          //     models: [Injector.getAsReactive<UserStore>()],
          //     initState: (context, initReact) {
          //       initReact.setState(
          //         (fn) => fn.getLoginAuth(Constants.userSharedPref),
          //       );
          //     },
          //     builder: (context, stateReact) {
          //       if (stateReact.hasData) {
          //         Provider.of<DataBridge>(context, listen: false)
          //             .setUserData(stateReact.state.getLoginResponse);
          //         return DashboardPage();
          //       } else if (stateReact.hasError) {
          //         return UserLoginPage();
          //       } else {
          //         return UserLoginPage();
          //       }
          //     }),
          onGenerateRoute: Routes.onGenerateRoute,
          navigatorKey: Routes.navigatorKey),
    );
  }
}
