import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/screens/profile/edit_profile.dart';
import 'package:i_love_iruka/screens/profile/groomer_page_profile.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);
  static const String id = "/new_profile_page";

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  LoginResponse dataLogin;
  loadSharedPrefs() {
    try {
      SharedPref().getLoginData().then((onValue) {
        dataLogin = LoginResponse.fromJson(onValue);
        Provider.of<DataBridge>(context, listen: false).setUserData(dataLogin);
        print("berhaisl ");
      });
    } catch (Excepetion) {
      Scaffold.of(context).showSnackBar(SnackBar(content: new Text("Nothing found!"), duration: const Duration(milliseconds: 500)));
    }
  }

  @override
  void initState() {
    // loadSharedPrefs();
    super.initState();
  }
  @override
  void didChangeDependencies() {
    loadSharedPrefs();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterProvider>(
      builder: (context, regProv, __) => Consumer<DataBridge>(
        builder: (context, dataBridge, _) => Scaffold(
          backgroundColor: Color(0xffeceff1),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 250,
                pinned: true,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text((dataBridge.getUserData() == null) ? "noname" : dataBridge.getUserData().user.name),
                  centerTitle: false,
                  collapseMode: CollapseMode.parallax,
                  background: (dataBridge.getUserData() == null)
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : Image.network(
                          "${Constants.getWebUrl() + dataBridge.getUserData().user.picture.toString()}",
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              SliverFillRemaining(
                fillOverscroll: false,
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed(EditProfile.id, arguments: dataLogin);
                        },
                        leading: Icon(Icons.person),
                        title: Text("Profile"),
                        trailing: Icon(FontAwesomeIcons.arrowRight),
                      ),
                      Divider(),
                      (dataBridge.getUserData().user.role.toString().toLowerCase().contains("groomer"))
                          ? ListTile(
                              onTap: () {
                                Navigator.of(context).pushNamed(GroomerPageProfile.page_name);
                              },
                              leading: Icon(FontAwesomeIcons.personBooth),
                              title: Text("Groomer Page Profile"),
                              trailing: Icon(FontAwesomeIcons.arrowRight),
                            )
                          : Container(),
                      (dataBridge.getUserData().user.role.toString().toLowerCase().contains("groomer")) ? Divider() : Container(),
                      ListTile(
                        onTap: () {
                          logoutDialog(context, dataBridge, regProv);
                        },
                        title: Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future logoutDialog(BuildContext context, DataBridge dataBridge, RegisterProvider regProv) {
    return showDialog(
        context: (context),
        builder: (context) {
          return AlertDialog(
            title: Text("Logout"),
            content: Text("Are you sure want to logout this account ? "),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil("/login", (Route<dynamic> route) => false);
                  SharedPref().clearPreference();
                  dataBridge.clearAllData();
                },
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        });
  }
}
