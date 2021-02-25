import 'package:flutter/material.dart';
import 'package:i_love_iruka/presentation/auth/register_form/register_form.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';

class SigninSignoutPage extends StatefulWidget {
  static final String TAG = '/signin_signout_page';
  SigninSignoutPage({Key key}) : super(key: key);

  @override
  _SigninSignoutPageState createState() => _SigninSignoutPageState();
}

class _SigninSignoutPageState extends State<SigninSignoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to Iruka",
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    spreadRadius: 3,
                                    color: Colors.grey[300],
                                    offset: Offset.fromDirection(3, 3))
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                      'images/assets/iruka_logo.png'),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ]),
                ),
              ),
              SliverToBoxAdapter(
                child: TabBar(isScrollable: true, tabs: [
                  Tab(
                    text: "Sign in",
                  ),
                  Tab(
                    text: "Sign out",
                  ),
                ]),
              ),
              SliverFillRemaining(
                child: TabBarView(children: [
                  SignInForm(),
                  RegisterForm(),
                ]),
              )

              // SliverToBoxAdapter(
              //   child: TabBarView(children: [
              //     SignInForm(),
              //     RegisterForm(),
              //   ]),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
