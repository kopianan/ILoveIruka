import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/address/cubit/address_cubit.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/presentation/home/user_home/profile/setting_profile_page.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("User Setting"),
      ),
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  Divider(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("welcome",
                                  style: TextStyle(color: Colors.grey)),
                              SizedBox(height: 10),
                              Text("Nama",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18))
                            ],
                          ),
                        ),
                      ),
                      IconButton(icon: Icon(Icons.logout), onPressed: () {}),
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
                    leadingIcon: Icons.settings,
                    title: "Profile",
                    onTap: () {
                      Get.toNamed(SettingProfielPage.TAG);
                    }),
              ],
            ),
          ],
        )),
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
