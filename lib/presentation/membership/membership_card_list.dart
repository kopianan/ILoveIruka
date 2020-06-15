import 'package:flutter/material.dart';
import 'package:i_love_iruka/presentation/widgets/member_card.dart';
import 'package:i_love_iruka/presentation/widgets/page_header.dart';
import 'package:i_love_iruka/util/color_col.dart';

class MemberShipCardList extends StatefulWidget {
  @override
  _MemberShipCardListState createState() => _MemberShipCardListState();
}

class _MemberShipCardListState extends State<MemberShipCardList> {
  var height;
  var width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: height * 0.21, //300,
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      ),
                ),
               PageHeader(title: "Member List Card",),
                Positioned(
                  bottom: 0,
                  left: width * 0.07, // 30,
                  right: width * 0.07, // 30,
                  child: Container(
                      height: height * 0.07, //150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[400],
                                blurRadius: 5,
                                offset: Offset(0, 2))
                          ]),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text("asdlfkjasdkl"))),
                )
              ],
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                MemberCard(
                  cardBottomGradient: ColorCol.yellowCardBottomGradient,
                  cardTextColor: ColorCol.yellowCardText,
                  cardTopGradient: ColorCol.yellowCardTopGradient,
                  imagesList: [
                    'yellow_clippath1.png',
                    'yellow_clippath2.png',
                    'yellow_clippath3.png'
                  ],
                ),
                MemberCard(
                  cardBottomGradient: ColorCol.bronzeCardBottomGradient,
                  cardTextColor: ColorCol.bronzeCardText,
                  cardTopGradient: ColorCol.bronzeCardTopGradient,
                  imagesList: [
                    'bronze_clippath1.png',
                    'bronze_clippath2.png',
                    'bronze_clippath3.png'
                  ],
                ),
                MemberCard(
                  cardBottomGradient: ColorCol.blueCardBottomGradient,
                  cardTextColor: ColorCol.blueCardText,
                  cardTopGradient: ColorCol.blueCardTopGradient,
                  imagesList: [
                    'blue_clippath1.png',
                    'blue_clippath2.png',
                    'blue_clippath3.png'
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
