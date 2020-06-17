import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/domain/auth/login_data.dart';
import 'package:i_love_iruka/infrastructure/core/shared_pref.dart';
import 'package:i_love_iruka/presentation/auth/widgets/email_address.dart';
import 'package:i_love_iruka/presentation/auth/widgets/password.dart';
import 'package:i_love_iruka/presentation/widgets/appbar_transparent_back.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_outline.dart';
import 'package:i_love_iruka/routes/router.gr.dart';
import 'package:i_love_iruka/util/flushbar_function.dart';
import 'package:provider/provider.dart';

import '../../../injection.dart';

class SignInForm extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, _) => BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
          state.maybeMap(
            orElse: (){},
            onProgress: (e) {
              flushbar = showFlushbarLoading(
                loading: "Signing User, Wait a moment.....",
              )..show(context);
            },
            failOrSuccessLoginOption: (e) {
              e.failOrSuccessOption.fold(
                () => null,
                (a) {
                  flushbar.dismiss();
                  a.fold((l) {
                    String errM;

                    l.map(
                      badRequest: (e) => errM = "Check your input",
                      serverError: (e) => errM = "Server Error",
                      notFound: (e) => errM = "Something wrong",
                    );
                    flushbar = showFlushbarError(errMessage: errM)
                      ..show(context);
                  }, (r) {
                    r.map(
                        loginRequestData: (e) {},
                        loginResponseData: (e) {
                          authProvider.setUserData(e.user);
                          saveUserData(e.user).then((value) {
                            ExtendedNavigator.of(context)
                                .pushNamed(Routes.dashboardPage);

                            Fluttertoast.showToast(msg: "Success Login");
                          }).catchError((onError) {
                            return Fluttertoast.showToast(
                                msg: "You can not login");
                          });
                        });
                  });
                },
              );
            },
          );
        }, builder: (context, state) {
          return state.maybeMap(
            failOrSuccessLoginOption: (res) => signInPageContent(context),
            orElse: () => signInPageContent(context),
          );
        }),
      ),
    );
  }

  Scaffold signInPageContent(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Stack(
              children: <Widget>[
                Column(children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 300,
                        child: Image.asset(
                          'images/dev_images/signin_decoration.png',
                          alignment: Alignment.bottomRight,
                          fit: BoxFit.fitWidth,
                          width: double.infinity,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, top: 80),
                        child: Text(
                          "Welcome\nBack",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  bottomContent(context)
                ]),
                AppBarTransparentBack(function: () {
                  Navigator.pop(context, true);
                }),
              ],
            ),
          ),
        ),
      );

  Widget bottomContent(
    BuildContext context,
  ) =>
      Align(
        alignment: FractionalOffset.bottomCenter,
        child: Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: <Widget>[
                CustomInputText(
                  controller: emailController,
                  focusNode: _emailFN,
                  textInputAction: TextInputAction.next,
                  onFieldSubmited: (val) {
                    fieldFocusChange(
                        context: context,
                        currentFocus: _emailFN,
                        nextFocus: _passwordFN);
                  },
                  validator: validateEmail,
                ),
                SizedBox(
                  height: 20,
                ),
                Password(
                  controller: passwordController,
                  focusNode: _passwordFN,
                  textInputAction: TextInputAction.done,
                  onFieldSubmited: (val) {
                    _passwordFN.unfocus();
                  },
                  validator: validatePassword,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      ExtendedNavigator.of(context)
                          .pushNamed(Routes.forgotPasswordForm);
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
                BtnPrimaryBlue(
                  text: "Log in",
                  onPressed: () {
                    _onLoginPressed(context);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider(
                        height: 2,
                        color: Colors.grey,
                        thickness: 1,
                      )),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("OR")),
                      Expanded(
                          child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                BtnPrimaryOutline(
                  text: "Sign up",
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, Routes.registerForm);
                  },
                )
              ],
            ),
          ),
        ),
      );
  void _onLoginPressed(
    BuildContext context,
  ) {
    if (_formKey.currentState.validate()) {
      context.bloc<AuthBloc>().add((AuthEvent.loginWithEmail(LoginRequestData(
            username: emailController.text,
            password: passwordController.text,
          ))));
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
