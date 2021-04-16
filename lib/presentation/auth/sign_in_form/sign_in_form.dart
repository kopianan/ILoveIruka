import 'package:dio/dio.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/infrastructure/core/dio_injection_module.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_page.dart';
import 'package:i_love_iruka/presentation/auth/widgets/decoration.dart';
import 'package:i_love_iruka/presentation/home/dashboard_page.dart';
import 'package:i_love_iruka/presentation/splah_screen/splash_screen.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:provider/provider.dart';

import '../../../injection.dart';

class SignInForm extends StatefulWidget {
  static const String TAG = '/sign_in_form_page';
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  TextEditingController emailController;
  TextEditingController passwordController;
  final FocusNode _emailFN = FocusNode();
  final FocusNode _passwordFN = FocusNode();
  Flushbar flushbar;

  fieldFocusChange({
    BuildContext context,
    FocusNode currentFocus,
    FocusNode nextFocus,
  }) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.length < 6)
      return 'Password must be more than 6 characters';
    else
      return null;
  }

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  bool obsecureTextPassword = true;
  onLoginListener(AuthState state) {
    state.maybeMap(
      orElse: () {},
      onLoginOption: (e) {
        e.onLoginOption.fold(
          () {},
          (a) => a.fold((l) {
            l.map(
                responseError: (err) =>
                    showBasicFlash(context, err.errorMessage),
                serverError: (err) =>
                    showBasicFlash(context, err.errorMessage));
          }, (r) {
            Pref().saveUserData(r).then(
                  (value) => Get.offAllNamed(
                    DashboardPage.TAG,
                  ),
                );
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) => onLoginListener(state),
          builder: (context, state) {
            return SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: GestureDetector(
                  onTap: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Form(
                      key: _formKey,
                      autovalidate: _autoValidate,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: textFieldShadow(),
                              child: TextFormField(
                                controller: emailController,
                                focusNode: _emailFN,
                                textInputAction: TextInputAction.next,
                                onFieldSubmitted: (term) {
                                  fieldFocusChange(
                                      context: context,
                                      currentFocus: _emailFN,
                                      nextFocus: _passwordFN);
                                },
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  hintText: "Input your email",
                                ),
                                validator: validateEmail,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: textFieldShadow(),
                              child: TextFormField(
                                obscureText: obsecureTextPassword,
                                validator: validatePassword,
                                controller: passwordController,
                                focusNode: _passwordFN,
                                textInputAction: TextInputAction.done,
                                onFieldSubmitted: (term) {
                                  _passwordFN.unfocus();
                                },
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "Input your new password",
                                    suffixIcon: IconButton(
                                      splashRadius: 10,
                                      icon: Icon(obsecureTextPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          obsecureTextPassword =
                                              !obsecureTextPassword;
                                        });
                                      },
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(ForgotPasswordPage.TAG);
                                },
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffEE2424)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            buttonAction(context, state),
                          ],
                        ),
                      ),
                    ),
                  )),
            );
          }),
    );
  }

  Widget buttonAction(BuildContext context, AuthState state) {
    return state.maybeMap(orElse: () {
      return BtnPrimaryBlue(
        text: "Log in",
        onPressed: () {
          _onLoginPressed(context);
        },
      );
    }, onLoginOption: (e) {
      if (e.isLoading) {
        return BtnPrimaryBlueLoading();
      } else
        return BtnPrimaryBlue(
          text: "Log in",
          onPressed: () {
            _onLoginPressed(context);
          },
        );
    });
  }

  void _onLoginPressed(
    BuildContext context,
  ) {
    if (_formKey.currentState.validate()) {
      // emailController.text
      context.read<AuthBloc>().add(AuthEvent.loginWithEmail(
          emailController.text, passwordController.text));
      _formKey.currentState.save();
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}

class GreenClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, size.height / 4.25);
    var firstControlPoint = new Offset(size.width / 4, size.height / 3);
    var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 4 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 3 - 40);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return null;
  }
}
