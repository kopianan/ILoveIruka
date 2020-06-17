import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/routes/router.gr.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, userData, _) =>
          BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
         
            authenticated: (e) {
              userData.setUserData(e.user);
              ExtendedNavigator.of(context)
                  .pushReplacementNamed(Routes.dashboardPage);
            },
            unAuthenticated: (user) => ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.welcomeScreen),
          );
        },
        child: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
