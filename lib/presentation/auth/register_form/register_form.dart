import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/domain/auth/register_data.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/widgets/appbar_transparent_back.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  List<String> dropdownList = ["Groomer", "Customer"];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  final FocusNode fullNameFN = FocusNode();
  final FocusNode emailFN = FocusNode();
  final FocusNode passwordFN = FocusNode();
  final FocusNode confPassFN = FocusNode();

  final fullNameCon = TextEditingController();
  final emailCon = TextEditingController();
  final passwordCon = TextEditingController();
  final confirmationPasswordCon = TextEditingController();

  String fullNameStr;
  String emailStr;
  String passwordStr;
  String confPassStr;
  String actionType;

  fieldFocusChange({
    BuildContext context,
    FocusNode currentFocus,
    FocusNode nextFocus,
  }) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
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
          create: (context) => getIt<AuthBloc>(),
          child: BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              onProgress: null,
              failOrSuccessLoginOption: (value) =>
                  value.failOrSuccessOption.fold(
                      () => null,
                      (a) => a.fold(
                            (l) => l.map(
                              badRequest: (e) => print("Bad Request"),
                              serverError: (e) => print("Server Error"),
                              notFound: (e) => print("Not Found"),
                            ),
                            (r) => print("Berhasil"),
                          )),
            );
          }, builder: (context, state) {
            return SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
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
                              "Create Your\nNew Account",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Form(
                        key: _formKey,
                        autovalidate: _autoValidate,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          child: formField(context, state),
                        ),
                      ),
                    ],
                  ),
                  AppBarTransparentBack(function: () {
                    Navigator.pop(context, true);
                  }),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  String validateName(String value) {
    if (value.length < 4)
      return 'Name must be more than 3 characters';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.length < 7)
      return 'Password must be more than 6 characters';
    else
      return null;
  }

  String validateConfPassword(String value) {
    if (value.length < 7)
      return 'Password must be more than 6 characters';
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

  Column formField(BuildContext context, AuthState state) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextFormField(
          style: TextStyle(letterSpacing: 1),
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
          decoration:
              _inputeTextDecoration("Full Name", "Input Your Full Name"),
          validator: validateName,
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          style: TextStyle(letterSpacing: 1),
          controller: emailCon,
          focusNode: emailFN,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (term) {
            fieldFocusChange(
              context: context,
              currentFocus: emailFN,
              nextFocus: passwordFN,
            );
          },
          validator: validateEmail,
          decoration: _inputeTextDecoration("Email", "Input your email"),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          style: TextStyle(letterSpacing: 1),
          textInputAction: TextInputAction.next,
          controller: passwordCon,
          focusNode: passwordFN,
          onFieldSubmitted: (term) {
            fieldFocusChange(
              context: context,
              currentFocus: passwordFN,
              nextFocus: confPassFN,
            );
          },
          validator: validatePassword,
          decoration: _inputeTextDecoration(
              "Password", "Input your password min. 6 chars"),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          style: TextStyle(letterSpacing: 1),
          controller: confirmationPasswordCon,
          textInputAction: TextInputAction.done,
          focusNode: confPassFN,
          onFieldSubmitted: (val) {
            confPassFN.unfocus();
          },
          decoration: _inputeTextDecoration(
              "Confirmation Password", "Input your password min. 6 chars"),
          validator: validateConfPassword,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: DropdownButton(
            underline: Divider(
              thickness: 2,
              height: 2,
            ),
            hint: Text(
              "Choose account type",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            value: actionType,
            isExpanded: true,
            items: dropdownList
                .map((f) => DropdownMenuItem(
                      child: Text(f),
                      value: f,
                    ))
                .toList(),
            onChanged: (val) {
              setState(() {
                actionType = "Customer";
              });
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),
        state.maybeMap(
          onProgress: (e) => BtnPrimaryBlueLoading(),
          orElse: () => BtnPrimaryBlue(
            text: "Register",
            context: context,
            onPressed: () {
              _validateInputs(context);
            },
          ),
        ),
      ],
    );
  }

  void _validateInputs(BuildContext context) {
    if (_formKey.currentState.validate()) {
      context.bloc<AuthBloc>().add(AuthEvent.registerWithEmail(
          RegisterData.registerRequestData(
              accessKey: "d78c1a5c-ccbe-4c26-ac08-43ed66c8afb9",
              availability: "false",
              cliping: "0",
              styling: "0",
              email: emailCon.text,
              name: fullNameCon.text,
              password: passwordCon.text,
              role: "Groomer",
              trainingYears: "0")));
      _formKey.currentState.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  InputDecoration _inputeTextDecoration(String label, String hint) {
    return InputDecoration(
        labelText: label,
        contentPadding: EdgeInsets.only(bottom: 5),
        isDense: true,
        hintText: hint,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        errorMaxLines: 1,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2)),
        border: UnderlineInputBorder());
  }
}
