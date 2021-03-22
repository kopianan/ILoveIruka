import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/domain/auth/sign_up_request.dart';
import 'package:i_love_iruka/domain/user/role_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_alert.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/auth/widgets/decoration.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';

class RegisterForm extends StatefulWidget {
  static const String TAG = '/register_form_page';
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  final FocusNode fullNameFN = FocusNode();
  final FocusNode emailFN = FocusNode();
  final FocusNode passwordFN = FocusNode();
  final FocusNode confPassFN = FocusNode();
  final FocusNode userNameFN = FocusNode();

  final fullNameCon = TextEditingController();
  final emailCon = TextEditingController();
  final passwordCon = TextEditingController();
  final confirmationPasswordCon = TextEditingController();

  RoleDataModel actionType;
  fieldFocusChange({
    BuildContext context,
    FocusNode currentFocus,
    FocusNode nextFocus,
  }) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  bool obsecureTextPassword = true;
  bool obsecureTextConfirmPassword = true;
  List<RoleDataModel> roleDataList;

  onGetUserTypeListener(BuildContext context, AuthState state) {
    state.maybeMap(
        orElse: () {},
        onGetUserRoleList: (e) {
          e.roleOptions.fold(
              () => roleDataList = null,
              (a) => a.fold(
                    (l) {
                      print(l);
                      roleDataList = null;
                    },
                    (r) {
                      setState(() {
                        roleDataList = r;
                      });
                    },
                  ));
        });
  }

  onRegisterUserListner(BuildContext context, AuthState state) {
    state.maybeMap(
      orElse: () {},
      onRegisterUser: (e) {
        e.userOption.fold(
            () => {},
            (a) => a.fold(
                  (error) {
                    error.map(
                      responseError: (e) =>
                          showBasicFlash(context, e.errorMessage),
                      serverError: (e) =>
                          showBasicFlash(context, e.errorMessage),
                    );
                  },
                  (success) {
                    print(success);
                    Get.offNamed(WelcomeScreen.TAG);
                    showSuccessFlash(
                        context, "Success, Please re sign-in user");
                  },
                ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
          body: BlocProvider(
        create: (context) =>
            getIt<AuthBloc>()..add(AuthEvent.getUserRoleList()),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: onGetUserTypeListener,
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => _buildLoadingPage(),
              onGetUserRoleList: (e) {
                return _buildSingleChildScrollView(context, state);
                // if (e.isLoading)
                //   return _buildLoadingPage();
                // else
                //   return _buildSingleChildScrollView(context);
              },
            );
          },
        ),
      )),
    );
  }

  Widget _buildLoadingPage() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSingleChildScrollView(
      BuildContext context, AuthState userTypeState) {
    return SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: BlocConsumer<AuthBloc, AuthState>(
              listener: onRegisterUserListner,
              builder: (context, state) {
                return Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        userTypeState.maybeMap(
                            orElse: () => dropDownNone(),
                            onGetUserRoleList: (role) {
                              return role.roleOptions.fold(
                                  () => dropDownNone(),
                                  (a) => a.fold(
                                        (l) => dropDownEror(
                                            "Can not load data from server"),
                                        (r) => Container(
                                          decoration: textFieldShadow(),
                                          width: double.infinity,
                                          child: DropdownButtonFormField<
                                              RoleDataModel>(
                                            validator: (model) {
                                              if (model == null) {
                                                return "Please choose type account";
                                              } else {
                                                return null;
                                              }
                                            },
                                            hint: Text("Choose account type"),
                                            value: actionType,
                                            isExpanded: true,
                                            items: roleDataList
                                                .map((f) => DropdownMenuItem(
                                                      child: Text(f.name),
                                                      value: f,
                                                    ))
                                                .toList(),
                                            onChanged: (val) {
                                              setState(() {
                                                actionType = val;
                                              });
                                            },
                                          ),
                                        ),
                                      ));
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: textFieldShadow(),
                          child: TextFormField(
                            controller: fullNameCon,
                            textInputAction: TextInputAction.next,
                            focusNode: fullNameFN,
                            onFieldSubmitted: (term) {
                              fieldFocusChange(
                                context: context,
                                currentFocus: fullNameFN,
                                nextFocus: emailFN,
                              );
                            },
                            decoration: InputDecoration(
                              labelText: "Fullname",
                              hintText: "Input your full name",
                            ),
                            validator: validateName,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: textFieldShadow(),
                          child: TextFormField(
                            controller: emailCon,
                            focusNode: emailFN,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (term) {
                              fieldFocusChange(
                                context: context,
                                currentFocus: emailFN,
                                nextFocus: userNameFN,
                              );
                            },
                            validator: validateEmail,
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "Input your email",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: textFieldShadow(),
                          child: TextFormField(
                            obscureText: obsecureTextPassword,
                            controller: passwordCon,
                            validator: validatePassword,
                            focusNode: passwordFN,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (term) {
                              fieldFocusChange(
                                context: context,
                                currentFocus: passwordFN,
                                nextFocus: confPassFN,
                              );
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
                          decoration: textFieldShadow(),
                          child: TextFormField(
                            obscureText: obsecureTextConfirmPassword,
                            controller: confirmationPasswordCon,
                            validator: validateConfPassword,
                            focusNode: confPassFN,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (term) {
                              fieldFocusChange(
                                context: context,
                                currentFocus: passwordFN,
                                nextFocus: confPassFN,
                              );
                            },
                            decoration: InputDecoration(
                                labelText: "Password Confirm",
                                hintText: "Confirmation your new password",
                                suffixIcon: IconButton(
                                  splashRadius: 10,
                                  icon: Icon(obsecureTextConfirmPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      obsecureTextConfirmPassword =
                                          !obsecureTextConfirmPassword;
                                    });
                                  },
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        state.maybeMap(
                          orElse: () => BtnPrimaryBlue(
                            text: "Register",
                            context: context,
                            onPressed: () {
                              _validateInputs(context);
                            },
                          ),
                          onRegisterUser: (e) {
                            if (e.isLoading)
                              return BtnPrimaryBlueLoading();
                            else
                              return BtnPrimaryBlue(
                                text: "Register",
                                context: context,
                                onPressed: () {
                                  _validateInputs(context);
                                },
                              );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ));
  }

  Container dropDownNone() {
    return Container(
      decoration: textFieldShadow(),
      width: double.infinity,
      child: DropdownButtonFormField<RoleDataModel>(
        hint: Text("Choose account type"),
        isExpanded: true,
        items: [],
        onChanged: (val) {},
      ),
    );
  }

  Container dropDownEror(String error) {
    return Container(
      decoration: textFieldShadow(),
      width: double.infinity,
      child: DropdownButtonFormField<RoleDataModel>(
        hint: Text(error),
        isExpanded: true,
        items: [],
        onChanged: (val) {},
      ),
    );
  }

  String validateName(String value) {
    if (value.length < 4)
      return 'Name must be more than 3 characters';
    else
      return null;
  }

  String validateUsername(String value) {
    if (value.length < 4)
      return 'Username must be more than 3 characters';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.length < 6)
      return 'Password must be more than 5 characters';
    else
      return null;
  }

  String validateConfPassword(String value) {
    if (value.length < 6)
      return 'Password must be more than 5 characters';
    else if (value != passwordCon.text)
      return "Password doesn't match";
    else
      return null;
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

  void _validateInputs(BuildContext context) {
    if (_formKey.currentState.validate()) {
      final _request = SignUpRequest(
          email: emailCon.text,
          fullName: fullNameCon.text,
          image: "",
          password: passwordCon.text,
          passwordConfirmation: confirmationPasswordCon.text,
          phoneNumber: "",
          roleId: actionType.id,
          userName: "");

      context.read<AuthBloc>().add(AuthEvent.registerWithEmail(_request));
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}
