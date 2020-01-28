import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_bloc.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';
import 'package:i_love_iruka/models/model/login_response.dart';

import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/routes/route.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/screens/login/login_bloc/login_bloc_bloc.dart';
import 'package:i_love_iruka/screens/login/login_page.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_bloc.dart';
import 'package:i_love_iruka/users/data/user_store.dart';
import 'package:i_love_iruka/users/pages/users_login_page.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

void main() => runApp(MyApp());

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
  Future dataFuture;

  @override
  void initState() {
    dataFuture = SharedPref().getLoginData();
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
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBlocBloc>(
              builder: (BuildContext context) => LoginBlocBloc()),
          BlocProvider<RegisterBlocBloc>(
              builder: (BuildContext context) => RegisterBlocBloc()),
          BlocProvider<DashboardBlocBloc>(
              builder: (BuildContext context) => DashboardBlocBloc())
        ],

        // #558dc5 - #0b4987
        child: MaterialApp(
            title: 'I Love Iruka',
            theme: ThemeData(
              primaryColor: Color(0xff558dc5),
              iconTheme: IconThemeData(
                color: Colors.orange,
              ),
              errorColor: Colors.red,
            ),
            // home: Consumer<DataBridge>(
            //   builder: (context, dataBridge, _) => FutureBuilder(
            //     future: SharedPref().getLoginData(),
            //     builder: (BuildContext context, AsyncSnapshot snapshot) {
            //       switch (snapshot.connectionState) {
            //         case ConnectionState.none:
            //           return LoginPage();
            //           break;
            //         case ConnectionState.waiting:
            //           return LinearProgressIndicator();
            //           break;
            //         case ConnectionState.active:
            //           return LinearProgressIndicator();
            //           break;
            //         case ConnectionState.done:
            //           if (snapshot.hasError) {
            //             return LoginPage();
            //           } else {
            //             if (snapshot.hasData) {
            //               // SharedPref().saveLoginData(snapshot.data);
            //               var loginRes = LoginResponse.fromJson(snapshot.data);
            //               Provider.of<DataBridge>(context).setUserData(loginRes);
            //               return DashboardPage(
            //               );
            //             } else {
            //               return LoginPage();
            //             }
            //           }
            //           break;
            //       }
            //       return LoginPage();
            //     },
            //   ),
            // ),
            home: Injector(
              inject: [Inject<UserStore>(() => UserStore())],
              builder: (context) => UserLoginPage(),
            ),
            initialRoute: "/",
            onGenerateRoute: Routes.onGenerateRoute,
            navigatorKey: Routes.navigatorKey),
      ),
    );
  }
}
