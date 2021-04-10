import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/presentation/home/user_home/address/address_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/change_password/change_password_page.dart';
import 'package:i_love_iruka/presentation/home/user_home/profile/setting_profile_page.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';
import 'package:i_love_iruka/util/constants.dart';

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
      body: SafeArea(
        child: GetBuilder<UserController>(
          builder: (userController) => CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Column(
                        children: [
                          Divider(),
                          SizedBox(height: 20),
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
                                    : NetworkImage(Constants.getStagingUrl() +
                                        userController.getUserData().imageUrl),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("welcome",
                                          style: TextStyle(color: Colors.grey)),
                                      SizedBox(height: 10),
                                      Text(
                                          userController.getUserData().fullName,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18))
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.logout),
                                  onPressed: () {
                                    Get.offAllNamed(WelcomeScreen.TAG);
                                  }),
                            ],
                          ),
                          SizedBox(height: 20),
                          Divider(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        buildUserOptionListTile(
                          leadingIcon: Icons.history,
                          title: "History",
                          onTap: () {},
                        ),
                        buildUserOptionListTile(
                            leadingIcon: Icons.person_pin,
                            title: "Profile",
                            onTap: () {
                              Get.toNamed(SettingProfielPage.TAG);
                            }),
                        buildUserOptionListTile(
                            leadingIcon: Icons.edit_location_sharp,
                            title: "Address",
                            onTap: () {
                              Get.toNamed(AddressPage.TAG);
                            }),
                        buildUserOptionListTile(
                            leadingIcon: Icons.security_sharp,
                            title: "Change Password",
                            onTap: () {
                              Get.toNamed(ChangePasswordPage.TAG);
                            }),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildUserOptionListTile(
      {@required String title,
      @required IconData leadingIcon,
      @required Function onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(leadingIcon, size: 25, color: Colors.black),
      title: Text("$title", style: TextStyle(fontSize: 16)),
      trailing: Icon(Icons.keyboard_arrow_right_rounded),
    );
  }
}
