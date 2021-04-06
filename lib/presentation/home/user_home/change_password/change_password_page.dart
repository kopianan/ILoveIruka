import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/user/user_bloc.dart';
import 'package:i_love_iruka/domain/user/password_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';

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
            appBar: AppBar(
                title: Text("Change Password"), backgroundColor: Colors.white),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ChangePasswordField(
                    label: "Old Password",
                    hint: "Your old password",
                    controller: this.oldPassword,
                  ),
                  SizedBox(height: 20),
                  ChangePasswordField(
                    label: "New Password",
                    hint: "Your New password",
                    controller: this.newPassowrd,
                  ),
                  SizedBox(height: 20),
                  ChangePasswordField(
                    label: "Re-type Password",
                    hint: "Confirmation your new password",
                    controller: this.confPassowrd,
                  ),
                  SizedBox(height: 20),
                  Container(
                      child: state.maybeMap(
                    orElse: () => buildBtnPrimaryBlue(context),
                    loading: (e) => BtnPrimaryBlueLoading(),
                    error: (e) => buildBtnPrimaryBlue(context),
                    onChangePassword: (e) => buildBtnPrimaryBlue(context),
                  ))
                ],
              ),
            ),
          );
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
    @required this.label,
    @required this.controller,
  }) : super(key: key);
  final String hint;
  final String label;
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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        this.widget.label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextFormField(
          controller: editingController,
          obscureText: obsecureText,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: Icon(
                    (obsecureText) ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    this.obsecureText = !this.obsecureText;
                  });
                }),
            border: OutlineInputBorder(),
            hintText: this.widget.hint,
          )),
    ]);
  }
}
