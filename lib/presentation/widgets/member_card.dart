import 'package:flutter/material.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MemberCard extends StatelessWidget {
  const MemberCard(
      {Key key,
      @required this.cardBottomGradient,
      @required this.cardTextColor,
      @required this.cardTopGradient, 
      @required this.imagesList,
      @required this.name,
      @required this.point

      })
      : super(key: key);

  final Color cardTopGradient;
  final Color cardBottomGradient;
  final Color cardTextColor;
  ///Berurutan muali dari 1,2,3
  final List<String> imagesList ; 
  final String name ; 
  final String point ; 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey[500], blurRadius: 10, spreadRadius: 3)
        ],
      ),
      width: double.infinity,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [cardTopGradient, cardBottomGradient],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  '${Constants.image_devPath + imagesList[2]}',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  '${Constants.image_devPath + imagesList[1]}',
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  '${Constants.image_devPath + imagesList[0]}',
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
                      color: cardTextColor,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                         name,
                          style: TextStyle(
                              color: cardTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: cardTextColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Silver Member",
                              style: TextStyle(
                                  color: cardTextColor,
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
                     point,
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
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "EXP : -",
                          style: TextStyle(
                              fontSize: 10,
                              color: cardTextColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 20,
                        child: Image.asset(
                          'images/assets/iruka_petcare_color.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
