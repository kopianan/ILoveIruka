import 'package:flutter/material.dart';
import 'package:i_love_iruka/presentation/auth/register_form/register_form.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';

class SigninSignoutPage extends StatefulWidget {
  static const String TAG = '/signin_signout_page';
  SigninSignoutPage({Key key}) : super(key: key);

  @override
  _SigninSignoutPageState createState() => _SigninSignoutPageState();
}

class _SigninSignoutPageState extends State<SigninSignoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              Positioned(
                  bottom: 0,
                  right: -20,
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      'images/assets/iruka_cloud.png',
                    ),
                  )),
              Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    width: 150,
                    height: 150,
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'images/assets/iruka_petcare_color.png',
                    ),
                  )),
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        text: "Register",
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
            ],
          ),
        ),
      ),
    );
  }
}
