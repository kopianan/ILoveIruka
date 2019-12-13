import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/screens/login/login_bloc/login_bloc_g.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  LoginBlocBloc loginBlocBloc;
  String _email;
  String _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  var focusedBorderUnderlineInputBorder =
      UnderlineInputBorder(borderSide: BorderSide(color: Colors.white));
  var enabledBorderUnderlineInputBorder =
      UnderlineInputBorder(borderSide: BorderSide(color: Colors.white));
  var hintStyleTextStyle = TextStyle(color: Colors.white);
  var labelStyleTextStyle = TextStyle(color: Colors.grey);
  var inputTextStyle = TextStyle(color: Colors.white);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xffF6F5F8),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xff0b4987),
                Color(0xff558dc5),
              ])),
          child: BlocListener(
            bloc: loginBlocBloc,
            listener: (context, state) {
              if (state is LoginComplete) {
                //go to another page
                Provider.of<DataBridge>(context).setUserData(state.response); 
                Navigator.of(context).pushReplacementNamed("/dashboard");
              }
              if (state is LoginError) {
                Fluttertoast.showToast(msg: "No User Found");
              }
            },
            child: BlocBuilder<LoginBlocBloc, LoginBlocState>(
                bloc: loginBlocBloc,
                builder: (context, state) {
                  if (state is LoginLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is InitialLoginBlocState){
                    return buildLoginPageInitial();
                  }else {
                    return buildLoginPageInitial() ; 
                  }
                }),
          ),
        ));
  }

  Widget buildLoginPageInitial() {
    return Stack(children: <Widget>[
      Positioned(
        bottom: -80,
        right: -30,
        child: Image.asset("images/assets/iruka_cloud.png",width: 200,)
      ),

       Positioned(
        bottom: 50,
        right: 170,
        child: Image.asset("images/assets/iruka_cloud.png",width: 120,)
      ),
       Positioned(
        bottom: 150,
        right: 30,
        child: Image.asset("images/assets/iruka_cloud.png",width: 80,)
      ),
      Container(
        margin: EdgeInsets.only(top: 70, right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "images/assets/iruka_logo.png",
                            width: 150,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: 40,
                          ),
                          buildLoginEnterEmail(),
                          SizedBox(
                            height: 20,
                          ),
                          buildLoginEnterPassword(),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Text(
                              "Forgot password ? ",
                              style: TextStyle(color: Colors.white),
                            ),
                            alignment: Alignment.centerRight,
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildLoginButtonVer2(),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 30),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/register2_page");
                            },
                            child: Text(
                              "Don't Have Account ? Sign Up",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset(
                "images/assets/iruka_petcare_white.png",
                width: 200,
              ),
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    ]);
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
// Indian Mobile number are of 10 digit only
    if (value.length < 3)
      return 'Password must be more then 5 digits';
    else
      return null;
  }

  void _validateInputs() {
    final loginBloc = BlocProvider.of<LoginBlocBloc>(context);
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
      final dataLogin =
          LoginRequest(username: "$_email", password: "$_password");

      loginBloc.add(LoginUser(loginData: dataLogin));
    } else {
//    If all data are not valid thezn start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  Container buildLoginButtonVer2() {
    return Container(
      height: 40,
      width: double.infinity,
      child: RaisedButton(
        color: Color(0xff0b4987),
        onPressed: () {
          _validateInputs();
        },
        child: Text("Login",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            )),
      ),
    );
  }

  Container buildLoginEnterPassword() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.lock_open,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 30.0,
            width: 1.0,
            margin: EdgeInsets.only(right: 10),
            color: Colors.grey.withOpacity(0.5),
          ),
          new Expanded(
            child: TextFormField(
              style: inputTextStyle,
              validator: validatePassword,
              onSaved: (String val) {
                _password = val;
              },
              obscureText: _obscureText,
              decoration: InputDecoration(
                enabledBorder: enabledBorderUnderlineInputBorder,
                focusedBorder: focusedBorderUnderlineInputBorder,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                ),
                labelText: 'Enter your password',
                labelStyle: labelStyleTextStyle,
                hintStyle: hintStyleTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildLoginEnterEmail() {
    var inputTextStyle = TextStyle(color: Colors.white);
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 30.0,
            width: 1.0,
            margin: EdgeInsets.only(right: 10),
            color: Colors.grey.withOpacity(0.5),
          ),
          new Expanded(
            child: TextFormField(
              style: inputTextStyle,
              validator: validateEmail,
              onSaved: (String val) {
                _email = val;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: enabledBorderUnderlineInputBorder,
                focusedBorder: focusedBorderUnderlineInputBorder,
                labelStyle: labelStyleTextStyle,
                labelText: 'Enter your email',
                hintStyle: hintStyleTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
// BeveledRectangleBorder
