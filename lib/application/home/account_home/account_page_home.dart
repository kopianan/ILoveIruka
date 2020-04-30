import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AccountPagehome extends StatefulWidget {
  @override
  _AccountPagehomeState createState() => _AccountPagehomeState();
}

class _AccountPagehomeState extends State<AccountPagehome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xffF6F6F6),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffF9C137), Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Container(
                margin: EdgeInsets.only(top: 80, right: 20, left: 20),
                child: MemberCard(),
              ),
            ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 300,
              ),
              child: Column(
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            height: double.infinity,
                            child: InkWell(
                              onTap: () {},
                              splashColor: Colors.yellow,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Icon(MdiIcons.account),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("See Profile"),
                                  ]),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            height: double.infinity,
                            child: InkWell(
                              onTap: () {},
                              splashColor: Colors.yellow,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Icon(MdiIcons.account),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("See Profile"),
                                  ]),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  child: Text(
                                "Recent Activities",
                                style: TextStyle(
                                    color: Color(0xff6A6A6A),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                              Container(
                                  child: Text(
                                "view report",
                                style: TextStyle(color: Colors.blue),
                              )),
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          color: Colors.white,
                          elevation: 7,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              child: Column(
                                children: <Widget>[
                                  ActivitiesComponent(),
                                  ActivitiesComponent(),
                                  ActivitiesComponent(),
                                  ActivitiesComponent(),
                                ],
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ActivitiesComponent extends StatelessWidget {
  const ActivitiesComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffF3F3F3),
      ),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Pet Checkup",
                style: TextStyle(color: Color(0xff6A6A6A), fontSize: 16),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "30-April-2020",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "Rp. 250.000",
                style: TextStyle(color: Color(0xff6A6A6A), fontSize: 16),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "+ 100 point",
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MemberCard extends StatelessWidget {
  const MemberCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [

          BoxShadow(
            color: Colors.grey[500],
            blurRadius: 10,
            spreadRadius: 3
          )
        ],
      ),
      width: double.infinity,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xffFFF2AB),
              Color(0xffFFBF36),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'images/dev_images/clippath3.png',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'images/dev_images/clippath2.png',
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'images/dev_images/clippath1.png',
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: <Widget>[
                    Icon(
                      MdiIcons.accountCircle,
                      size: 50,
                      color: Color(0xffB78418),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "Jhon Doe",
                          style: TextStyle(
                              color: Color(0xffB78418),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Color(0xffF9BA32),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Silver Member",
                              style: TextStyle(
                                  color: Color(0xffB78418),
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "750",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffF9BA32),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      "POINTS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xffBB890E),
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "EXP : 02 - July - 2030",
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xffB78418),
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
