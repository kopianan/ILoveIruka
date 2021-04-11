import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/user/user_bloc.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';
import 'package:i_love_iruka/presentation/auth/forgot_password_form/forgot_password_success_notif.dart';
import 'package:i_love_iruka/presentation/auth/widgets/decoration.dart';

import '../../../injection.dart';

class ForgotPasswordPage extends StatefulWidget {
  static const String TAG = '/forgot_password_page';

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController emailController = TextEditingController();

  bool _obsecureText = true;
  final _formKey = GlobalKey<FormState>();

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("Forgot Password"),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context, true);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
          )),
      body: BlocProvider(
        create: (context) => getIt<UserBloc>(),
        child: BlocConsumer<UserBloc, UserState>(listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            onForgotPassword: (e) {
              e.response.fold(
                  () => print("On none Forgot password"),
                  (a) => a.fold(
                        (l) => showBasicFlash(context, l.error),
                        (r) {
                          Get.offAndToNamed(ForgotPaswordSuccessNotif.TAG);
                          showSuccessFlash(context, r);
                        },
                      ));
            },
          );
        }, builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 200,
                  child: Image.asset(
                    'images/assets/iruka_logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                          decoration: textFieldShadow(),
                          child: TextFormField(
                            controller: emailController,
                            textInputAction: TextInputAction.next,
                            validator: validateEmail,
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "Input your email",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                          "Enter the email address associated with your account",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: 30,
                      ),
                      state.maybeMap(
                        orElse: () => buildDefaultButton(context),
                        onForgotPassword: (e) {
                          return e.response.fold(
                            () => loadingButton(context),
                            (a) => buildDefaultButton(context),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.asset(
                    'images/assets/iruka_petcare_color.png',
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  MaterialButton buildDefaultButton(BuildContext context) {
    return MaterialButton(
      textColor: Colors.white,
      // padding: EdgeInsets.symmetric(horizontal: 10),
      onPressed: () {
        if (_formKey.currentState.validate()) {
          context
              .read<UserBloc>()
              .add(UserEvent.forgotPassword(emailController.text));
        } else {
          Fluttertoast.showToast(msg: "Check your email");
        }
      },
      splashColor: Colors.white,
      color: Color(0xff2A7FD5),
      minWidth: double.infinity,
      height: 50,
      elevation: 8,
      highlightElevation: 2,
      child: Text("Reset Password"),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  MaterialButton loadingButton(BuildContext context) {
    return MaterialButton(
      textColor: Colors.white,
      // padding: EdgeInsets.symmetric(horizontal: 10),
      onPressed: () {},
      splashColor: Colors.white,
      color: Color(0xFFD7D9DB),
      minWidth: double.infinity,
      height: 50,
      elevation: 8,
      highlightElevation: 2,
      child: Center(child: CircularProgressIndicator()),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
