import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/user/user_bloc.dart';
import 'package:i_love_iruka/domain/user/password_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/global_widget_method.dart';

import '../../../../injection.dart';

class ChangePasswordPage extends StatefulWidget {
  static final String TAG = "/change_password_page";
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassowrd = TextEditingController();
  TextEditingController confPassowrd = TextEditingController();

  void clearController() {
    oldPassword.clear();
    newPassowrd.clear();
    confPassowrd.clear();
  }

  int labelFlex = 2;
  int valueFlex = 7;
  double height = 30;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserBloc>(),
      child: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              loading: (e) {
                print("Loading");
              },
              error: (e) {
                showBasicFlash(context, e.failure.error);
              },
              onChangePassword: (e) {
                clearController();
                showSuccessFlash(context, e.success);
              });
        },
        builder: (context, state) {
          return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Stack(children: [
                Positioned(
                    bottom: -30,
                    right: -50,
                    child: Image.asset(
                      'images/assets/iruka_cloud.png',
                      width: 160,
                    )),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height),
                            GlobalWidgetMethod.pageTitle("Change Password"),
                            SizedBox(height: height),
                            Row(
                              children: [
                                Expanded(
                                    flex: labelFlex,
                                    child: Text("Old\nPassword")),
                                SizedBox(width: 15),
                                ChangePasswordField(
                                  flex: valueFlex,
                                  hint: "Your old password",
                                  controller: this.oldPassword,
                                ),
                              ],
                            ),
                            SizedBox(height: height),
                            Row(
                              children: [
                                Expanded(
                                    flex: labelFlex,
                                    child: Text("New Password")),
                                SizedBox(width: 15),
                                ChangePasswordField(
                                  flex: valueFlex,
                                  hint: "Your new password",
                                  controller: this.oldPassword,
                                ),
                              ],
                            ),
                            SizedBox(height: height),
                            Row(
                              children: [
                                Expanded(
                                    flex: labelFlex,
                                    child: Text("Re-type assword")),
                                SizedBox(width: 15),
                                ChangePasswordField(
                                  flex: valueFlex,
                                  hint: "Confirmation your new password",
                                  controller: this.confPassowrd,
                                ),
                              ],
                            ),
                            SizedBox(height: height),
                            Container(
                                child: state.maybeMap(
                              orElse: () => buildBtnPrimaryBlue(context),
                              loading: (e) => BtnPrimaryBlueLoading(),
                              error: (e) => buildBtnPrimaryBlue(context),
                              onChangePassword: (e) =>
                                  buildBtnPrimaryBlue(context),
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]));
        },
      ),
    );
  }

  BtnPrimaryBlue buildBtnPrimaryBlue(BuildContext context) {
    return BtnPrimaryBlue(
      onPressed: () {
        final _data = PasswordDataModel(
            newPassword: newPassowrd.text,
            oldPassword: oldPassword.text,
            passwordConfirmation: confPassowrd.text);
        context.read<UserBloc>().add(UserEvent.changePassword(_data));
      },
      text: "Change Password",
    );
  }
}

class ChangePasswordField extends StatefulWidget {
  const ChangePasswordField({
    Key key,
    @required this.hint,
    @required this.controller,
    @required this.flex,
  }) : super(key: key);
  final String hint;
  final int flex;
  final TextEditingController controller;

  @override
  _ChangePasswordFieldState createState() => _ChangePasswordFieldState();
}

class _ChangePasswordFieldState extends State<ChangePasswordField> {
  bool obsecureText = true;
  TextEditingController editingController;
  @override
  void initState() {
    editingController = widget.controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: TextFormField(
          controller: editingController,
          obscureText: obsecureText,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: InkWell(
                  child: Icon(
                      (obsecureText) ? Icons.visibility : Icons.visibility_off),
                ),
                onPressed: () {
                  setState(() {
                    this.obsecureText = !this.obsecureText;
                  });
                }),
            border: UnderlineInputBorder(),
            hintText: this.widget.hint,
          )),
    );
  }
}
