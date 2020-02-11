import 'package:flutter/material.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';
import 'package:i_love_iruka/features/data/dashboard_store.dart';

import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/users/data/user_store.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'users/pages/login/users_login_page.dart';

void main() {
  runApp(
    Injector(inject: [Inject<UserStore>(() => UserStore()), Inject<DashboardStore>(() => DashboardStore())], builder: (context) => MyApp()),
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

  @override
  void initState() {
    // dataFuture = SharedPref().getLoginData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => DataBridge(),
        ),
        ChangeNotifierProvider(
          builder: (context) => RegisterProvider(),
        ),
      ],
      child: MaterialApp(
          title: 'I Love Iruka',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Color(0xff558dc5),
            iconTheme: IconThemeData(
              color: Colors.orange,
            ),
            errorColor: Colors.red,
          ),
          home: StateBuilder<UserStore>(
              models: [Injector.getAsReactive<UserStore>()],
              initState: (context, initReact) {
                initReact.setState(
                  (fn) => fn.getLoginAuth(Constants.userSharedPref),
                
                );
              },
              builder: (context, stateReact) {
                if (stateReact.hasData) {
                  Provider.of<DataBridge>(context, listen: false).setUserData(stateReact.state.getLoginResponse);
                  return DashboardPage();
                } else if (stateReact.hasError) {
                  return UserLoginPage();
                } else {
                  return UserLoginPage();
                }
              }),
          onGenerateRoute: Routes.onGenerateRoute,
          navigatorKey: Routes.navigatorKey),
    );
  }
}
