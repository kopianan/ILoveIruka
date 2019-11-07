import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:i_love_iruka/screens/login/login_bloc/login_bloc_g.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xffF6F5F8),
        body: SafeArea(
          child: BlocListener(
            bloc: loginBlocBloc,
            listener: (context, state) {
              if (state is LoginComplete) {
                //go to another page
                Fluttertoast.showToast(msg: state.response.user.name);
                Navigator.of(context).pushNamed("/dashboard");
              }
              if(state is LoginError){
                Fluttertoast.showToast(msg : "No User Found"); 
              }
            },
            child: BlocBuilder<LoginBlocBloc, LoginBlocState>(
                bloc: loginBlocBloc,
                builder: (context, state) {
                  if (state is LoginLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else
                    return buildLoginPageInitial(context);
                }),
          ),
        ));
  }

  Container buildLoginPageInitial(BuildContext context) {
    return Container(
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
                    ListTile(
                      onTap: (){
                        Navigator.of(context).pushNamed("/register2_page"); 
                      },
                      title: Text(
                        "Welcome!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Log in or create your account"),
                    ),
                    Container(
                      child: Column(children: <Widget>[
                        SizedBox(
                          height: 20,
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
                          child: Text("You forgot password ? "),
                          alignment: Alignment.centerRight,
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    buildLoginButon(),
                  ],
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: 30),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/register");
                },
                child: Text("Don't Have Account ? Sign Up"),
              )),
        ],
      ),
    );
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
    if (value.length < 5)
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

  Container buildLoginButon() {
    return Container(
      width: 80,
      height: 80,
      child: ClipPolygon(
        sides: 6,
        borderRadius: 5.0, // Default 0.0 degrees
        rotate: 90.0, // Default 0.0 degrees

        boxShadows: [
          PolygonBoxShadow(color: Colors.black, elevation: 1.0),
          // PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
        ],
        child: GestureDetector(
          onTap: () {
            _validateInputs();
          },
          child: Container(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            // Add box decoration
            decoration: BoxDecoration(
              // Box decoration takes a gradient
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  // Colors are easy thanks to Flutter's Colors class.
                  Colors.indigo[800],
                  Colors.indigo[700],
                  Colors.indigo[600],
                  Colors.indigo[400],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildLoginEnterPassword() {
    return Container(
     
      child: Row(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
              validator: validatePassword,
              onSaved: (String val) {
                _password = val;
              },
              obscureText: _obscureText,
              decoration: InputDecoration(
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
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildLoginEnterEmail() {
    return Container(
  
      child: Row(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
              validator: validateEmail,
              onSaved: (String val) {
                _email = val;
              },
            
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                
                labelText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
// BeveledRectangleBorder
