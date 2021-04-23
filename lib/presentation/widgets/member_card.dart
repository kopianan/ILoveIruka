import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

// // Color(0xffFFD700),
// //                 Color(0xffDAA520),
// //                 Color(0xffF0E68C),

// //  Colors.blue[500],
// //           Colors.blue[300],
// //           Colors.blue[800]

// //  Color(0xff35393f),
// //                   Color(0xff68737f),
// //                   Color(0xff1e2022),

class MemberCard extends StatelessWidget {
  const MemberCard(
      {Key key,
      @required this.name,
      @required this.validUntil,
      @required this.backNumber,
      @required this.backCardColor,
      @required this.textColor,
      @required this.type,
      @required this.frontColor})
      : super(key: key);
  final Color textColor;
  final String name;
  final String validUntil;
  final String type;
  final String backNumber;
  final double height = 220.0;
  final List<Color> backCardColor;
  final List<Color> frontColor;
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      flipOnTouch: true,
      back: Container(
        height: height,
        width: double.infinity,
        child: Card(
          elevation: 4.0,
          margin: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: backCardColor,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.clamp)),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.topCenter,
                  child: FittedBox(
                    child: Text(
                      backNumber,
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                color: Colors.grey[200],
                                blurRadius: 2,
                                offset: Offset.fromDirection(40, 1))
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 5),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 120,
                        child: Image.asset(
                            'images/assets/iruka_petcare_white.png',
                            fit: BoxFit.contain),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 40,
                  right: 0,
                  left: 0,
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      front: Container(
          height: height,
          width: double.infinity,
          child: Card(
            elevation: 4.0,
            margin: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: backCardColor,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            tileMode: TileMode.clamp))),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipPath(
                        clipper: OvalTopBorderClipper(),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 100,
                          color: frontColor[0].withOpacity(0.7),
                        ),
                      ),
                      ClipPath(
                        clipper: WaveClipperTwo(reverse: true),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 120,
                          color: frontColor[1].withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                //         Color(0xff35393f),
//         Color(0xff68737f),
//         Color(0xff1e2022),
                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 120,
                        child: Image.asset(
                            'images/assets/iruka_petcare_color.png',
                            fit: BoxFit.contain),
                      )
                    ],
                  ),
                ),
                Container(
                    width: double.infinity,
                    // color: Colors.red,
                    margin: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          type,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: double.infinity,
                    // color: Colors.red,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Valid until",
                              style: TextStyle(
                                  color: Color(0xFFFBFBFB), fontSize: 10),
                            ),
                            Text(
                              validUntil,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFBFBFB),
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
