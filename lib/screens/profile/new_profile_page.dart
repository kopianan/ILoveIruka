import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/screens/profile/edit_profile.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';

class NewProfilePage extends StatefulWidget {
  NewProfilePage({Key key}) : super(key: key);
  static const String id = "/new_profile_page";

  @override
  _NewProfilePageState createState() => _NewProfilePageState();
}

class _NewProfilePageState extends State<NewProfilePage> {
  LoginResponse dataLogin;
  loadSharedPrefs() async {
    try {
      LoginResponse user =
          LoginResponse.fromJson(await SharedPref().getLoginData());
      setState(() {
        dataLogin = user;
         print(dataLogin.user.picture + "FOTO AINT") ; 
      });
    } catch (Excepetion) {
      Scaffold.of(context).showSnackBar(SnackBar(
          content: new Text("Nothing found!"),
          duration: const Duration(milliseconds: 500)));
    }
  }

  @override
  void initState() {
    loadSharedPrefs();
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeceff1),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text((dataLogin== null) ?  "noname": dataLogin.user.name),
              centerTitle: false,
              collapseMode: CollapseMode.parallax,
              background: (dataLogin == null)
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Image.network(

                      "${Constants.getWebUrl() +  dataLogin.user.picture}",
                      
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          SliverFillRemaining(
            fillOverscroll: false,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(EditProfile.id);
                    },
                    leading: Icon(FontAwesomeIcons.mailchimp),
                    title: Text("Profile"),
                    trailing: Icon(FontAwesomeIcons.arrowRight),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {},
                    leading: Icon(FontAwesomeIcons.personBooth),
                    title: Text("Account"),
                    trailing: Icon(FontAwesomeIcons.arrowRight),
                  ),
                  Divider(),
                  ListTile(
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
    );
  }
}
