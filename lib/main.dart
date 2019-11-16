import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_bloc.dart';
import 'package:i_love_iruka/dashboard/dashboard_page.dart';

import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/routes/route.dart';
import 'package:i_love_iruka/screens/login/login_bloc/login_bloc_bloc.dart';
import 'package:i_love_iruka/screens/login/login_page.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_bloc.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

// primary
// #558dc5
// #d45500

// secondary color (RGBA)
// #df90b277
// #3cede2d2

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (context)=> DataBridge(),),
        ],
          child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBlocBloc>(builder: (BuildContext context) => LoginBlocBloc()),
          BlocProvider<RegisterBlocBloc>(builder: (BuildContext context) => RegisterBlocBloc()),
          BlocProvider<DashboardBlocBloc>(builder: (BuildContext context) => DashboardBlocBloc())
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
          
          home: DashboardPage(),
          initialRoute: "/",
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}
