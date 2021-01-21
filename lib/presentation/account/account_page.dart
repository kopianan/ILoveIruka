import 'dart:io';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_controller.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/infrastructure/core/local_storage.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/account/pages/advanced_information_content.dart';
import 'package:i_love_iruka/presentation/account/pages/personal_information_content.dart';
import 'package:i_love_iruka/util/flushbar_function.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatefulWidget {
  static final String TAG = '/account_page';

  AccountPage({Key key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);

    super.initState();
  }

  Flushbar flushbar;
  String msg;
  final _auth = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            failOrSuccessUpdateCustomerOption: (e) =>
                e.updateCustomerOption.fold(
                    () => () {},
                    (a) => a.fold(
                          (l) {
                            l.map(
                              badRequest: (e) => msg = "Wrong Input",
                              serverError: (e) => msg = "Server Error",
                              notFound: (e) => msg = "Something Wrong",
                              defaultError: (e) =>
                                  msg = "Check your internet connection",
                            );
                            showFlushbarError(errMessage: msg)..show(context);
                          },
                          (r) {
                            showFlushbarSuccess(
                                succMessage: "Profile Successful Updated")
                              ..show(context);
                            r.map(
                              loginRequestData: (e) {},
                              loginResponseData: (e) {
                                _auth.setUserData(e.user);
                                saveUserData(e.user).then((value) =>
                                    print("Success Saving user data to local"));
                              },
                            );
                          },
                        )),
          );
        },
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Scaffold(
            body: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  floating: false,
                  pinned: false,
                  snap: false,
                  backgroundColor: Color(0xff54A3F1),
                  title: Text("Profile"),
                  bottom: TabBar(
                      isScrollable: true,
                      labelColor: Colors.black,
                      // unselectedLabelColor: Colors.white,
                      controller: _tabController,
                      labelStyle: TextStyle(fontSize: 16),
                      indicatorColor: Colors.white,
                      indicator: ShapeDecoration(
                          shape: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                  style: BorderStyle.solid)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff2E6EAE),
                                Color(0xff54A3F1),
                              ])),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(
                          text: "Personal Information",
                        ),
                        Tab(text: "Advanced Information")
                      ]),
                ),
                SliverFillRemaining(
                  fillOverscroll: true,
                  hasScrollBody: true,
                  child: Scaffold(
                    body: TabBarView(
                      children: [
                        PersonalInformationContent(),
                        AdvancedInformationContent()
                      ],
                      controller: _tabController,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
