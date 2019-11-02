import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/routes/route.dart';
import 'package:i_love_iruka/screens/login/login_bloc/login_bloc_bloc.dart';
import 'package:i_love_iruka/screens/login/login_page.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBlocBloc>(
          builder: (BuildContext context) => LoginBlocBloc(),
        )
      ],
      child: MaterialApp(
        title: 'I Love Iruka',
        theme: ThemeData(
          // primarySwatch: Colors.yellow,
          // primaryColor: Color(0xd45500),
          // accentColor:Color(0x558dc5),
          iconTheme: IconThemeData(
            color: Colors.orange,
          ),
          errorColor: Colors.red,
        ),
        home: LoginPage(),
        initialRoute: "/",
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
