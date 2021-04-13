import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/presentation/home/pets/my_pets_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/address/address_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/change_password/change_password_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/profile/setting_profile_page.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';
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
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                    height: 150,
                    color: Color(0xFF3DA3EC),
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
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          maxRadius: 25,
                                          backgroundImage: (userController
                                                      .getUserData()
                                                      .imageUrl ==
                                                  null)
                                              ? AssetImage(
                                                  'images/assets/placeholder.png')
                                              : NetworkImage(
                                                  Constants.getStagingUrl() +
                                                      userController
                                                          .getUserData()
                                                          .imageUrl,
                                                ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("User Setting",
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
                                  buildUserOptionListTile(
                                      leadingIcon: Icon(Icons.pets_outlined,
                                          size: 25, color: Colors.black),
                                      title: "My Pets",
                                      onTap: () {
                                        Get.toNamed(MyPetsPage.TAG);
                                      }),
                                  buildUserOptionListTile(
                                      leadingIcon: Icon(Icons.person_pin,
                                          size: 25, color: Colors.black),
                                      title: "Profile",
                                      onTap: () {
                                        Get.toNamed(SettingProfielPage.TAG);
                                      }),
                                  buildUserOptionListTile(
                                      leadingIcon: Icon(
                                          Icons.edit_location_sharp,
                                          size: 25,
                                          color: Colors.black),
                                      title: "Address",
                                      onTap: () {
                                        Get.toNamed(AddressPage.TAG);
                                      }),
                                  buildUserOptionListTile(
                                      leadingIcon: Icon(Icons.security_sharp,
                                          size: 25, color: Colors.black),
                                      title: "Change Password",
                                      onTap: () {
                                        Get.toNamed(ChangePasswordPage.TAG);
                                      }),
                                  buildUserOptionListTile(
                                      leadingIcon: Icon(Icons.security_sharp,
                                          size: 25, color: Colors.red),
                                      title: "Sign Out",
                                      color: Colors.red,
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

  Widget buildUserOptionListTile(
      {@required String title,
      @required Icon leadingIcon,
      @required Function onTap,
      Color color = Colors.black}) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: leadingIcon,
          title: Text(
            "$title",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: color),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right_rounded,
            size: 30,
            color: color,
          ),
        ),
        Divider()
      ],
    );
  }
}
