import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static final String TAG = '/splash_screen_page';
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
              Get.offNamed(DashboardPage.TAG);
            },
            unAuthenticated: (user) => Get.offNamed(WelcomeScreen.TAG),
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
