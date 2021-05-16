import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/domain/auth/role_enum.dart';
import 'package:i_love_iruka/presentation/home/pets/my_pets_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/address/address_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/change_password/change_password_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/profile/setting_profile_page.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';
import 'package:i_love_iruka/presentation/widgets/global_widget_method.dart';
import 'package:i_love_iruka/util/constants.dart';

import '../../../injection.dart';

class UserHomePage extends StatefulWidget {
  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => getIt<AuthenticationBloc>(),
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            signOutState: (e) {
              if (e.isSignOut) {
                Get.offAllNamed(WelcomeScreen.TAG);
              } else {
                Fluttertoast.showToast(msg: "Error while log out");
              }
            },
          );
        }, builder: (context, state) {
          return GetBuilder<UserController>(
            builder: (userController) => Stack(
              children: [
                ClipPath(
                  clipper: WaveClipperOne(),
                  child: Container(
                    height: 150,
                    color: Color(0xFFA3D9FF),
                  ),
                ),
                Stack(
                  children: [
                    Positioned(
                        bottom: 8,
                        left: 8,
                        child: Container(
                          width: 150,
                          child: Image.asset(
                              'images/assets/iruka_petcare_color.png'),
                        )),
                    CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              SizedBox(height: kToolbarHeight),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GlobalWidgetMethod.pageTitle("Settings"),
                                    SizedBox(height: 30),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          maxRadius: 25,
                                          backgroundImage: NetworkImage(
                                              Constants.getStagingUrl() +
                                                  userController
                                                      .getUserData()
                                                      .imageUrl),
                                          onBackgroundImageError: (e, trace) =>
                                              AssetImage(
                                                  'images/assets/placeholder.png'),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Account",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 17)),
                                                SizedBox(height: 10),
                                                Text(
                                                    userController
                                                        .getUserData()
                                                        .fullName,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  (userController.getUserData().role.name ==
                                          describeEnum(Role.CUSTOMER))
                                      ? buildUserOptionListTile(
                                          icon: Icons.pets_outlined,
                                          color: Color(0xFF6D87FC),
                                          title: "My Pets",
                                          onTap: () {
                                            Get.toNamed(MyPetsPage.TAG);
                                          })
                                      : SizedBox(),
                                  buildUserOptionListTile(
                                      icon: Icons.person_pin,
                                      title: "Profile",
                                      color: Color(0xFFEB6161),
                                      onTap: () {
                                        Get.toNamed(SettingProfielPage.TAG);
                                      }),
                                  buildUserOptionListTile(
                                      icon: Icons.edit_location_sharp,
                                      title: "Address",
                                      color: Color(0xFF61EB7F),
                                      onTap: () {
                                        Get.toNamed(AddressPage.TAG);
                                      }),
                                  buildUserOptionListTile(
                                      icon: Icons.security_sharp,
                                      color: Color(0xFFE9EB61),
                                      title: "Change Password",
                                      onTap: () {
                                        Get.toNamed(ChangePasswordPage.TAG);
                                      }),
                                  buildUserOptionListTile(
                                      icon: Icons.logout,
                                      title: "Sign Out",
                                      color: Colors.red,
                                      textColor: Colors.red,
                                      onTap: () {
                                        Get.dialog(AlertDialog(
                                          content: Text(
                                              "After sign out user all local data will be removed, make sure you remember your password to re sign-in"),
                                          title: Text(
                                            "Sign out user",
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  context
                                                      .read<
                                                          AuthenticationBloc>()
                                                      .add(AuthenticationEvent
                                                          .signOut());
                                                },
                                                child: Text(
                                                  "Sign Out",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                            TextButton(
                                                onPressed: () {
                                                  Get.back();
                                                },
                                                child: Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))
                                          ],
                                        ));
                                      }),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget buildUserOptionListTile({
    @required String title,
    @required Function onTap,
    @required IconData icon,
    Color color = Colors.black,
    Color textColor = Colors.black,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          splashColor: color,
          highlightColor: Colors.white54,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: color,
              child: Icon(icon, size: 25, color: Colors.white),
            ),
            title: Text(
              "$title",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 30,
                color: textColor,
              ),
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
