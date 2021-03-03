import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';

import '../../injection.dart';

class SplashScreen extends StatelessWidget {
  static const String TAG = '/splash_screen_page';
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthenticationBloc>()
        ..add(AuthenticationEvent.checkAuthentication()),
      child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            authenticated: (e) {
              print(e.user);
              Get.toNamed(DashboardPage.TAG);
            },
            unAuthenticated: (data) {
              print(data);
              Get.offNamed(WelcomeScreen.TAG);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
