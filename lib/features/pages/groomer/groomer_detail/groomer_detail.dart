import 'package:flutter/material.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:provider/provider.dart';

class GroomerDetail extends StatefulWidget {
  GroomerDetail({Key key}) : super(key: key);

  @override
  _GroomerDetailState createState() => _GroomerDetailState();
}

class _GroomerDetailState extends State<GroomerDetail> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(
      builder: (context, dataBridge, _) => Scaffold(
          appBar: AppBar(
            title: Text("Groomer Detail"),
            // actions: <Widget>[
            //   Container(
            //     margin: EdgeInsets.only(right: 5),
            //     child: Row(
            //       children: <Widget>[
            //         SizedBox(width: 5),
            //         Text("Active"),
            //         CircleAvatar(
            //           radius: 6,
            //           backgroundColor: Colors.green,
            //         ),
            //       ],
            //     ),
            //   )
            // ],
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                new GroomerHeaderIdentity(
                  dataBridge: dataBridge,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ContentHeaderWithLine(
                        content: dataBridge.getCurrentSelectedGroomer.address,
                        title: "Address",
                      ),
                      ContentHeaderWithLine(
                        content: dataBridge.getCurrentSelectedGroomer.description,
                        title: "Description",
                      ),
                      ContentHeaderWithLine(
                        content: dataBridge.getCurrentSelectedGroomer.coverageArea.toString(),
                        title: "Groomer Coverage Area",
                      ),
                      ContentHeaderWithLine(
                        content:
                            "Styling : ${getAbility(dataBridge.getCurrentSelectedGroomer.styling)}\nCliping : ${getAbility(dataBridge.getCurrentSelectedGroomer.clipping)}\nYears of Experience : ${dataBridge.getCurrentSelectedGroomer.yearsOfExperience} Years\nKey Features : ${dataBridge.getCurrentSelectedGroomer.keyFeatures.toString()}",
                        title: "Groomer Skill, Styling, Cliping, Experience",
                      ),
                      (dataBridge.getCurrentSelectedGroomer.trainingStartDate.toString() == "null" || dataBridge.getCurrentSelectedGroomer.trainingStartDate.toString() == "")
                          ? ContentHeaderWithLine(
                              content: "This groomer has never attended any training at  Vivianna’s Grooming School",
                              title: "Training Information",
                            )
                          : ContentHeaderWithLine(
                              content:
                                  "Training Start Date : ${Common.convertDate(dataBridge.getCurrentSelectedGroomer.trainingStartDate.toString())}\nTraining Duration : ${dataBridge.getCurrentSelectedGroomer.trainingYears.toString()} Years \nCourse : ${dataBridge.getCurrentSelectedGroomer.trainingCourses.toString()}",
                              title: "Training Information",
                            ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  String getAbility(int ability) {
    switch (ability) {
      case 0:
        return "Beginning";
        break;
      case 1:
        return "Middle";
        break;
      case 2:
        return "Good";
        break;
      case 3:
        return "Excellent";
        break;
      default:
        return "Beginning";
        break;
    }
  }
}

class ContentHeaderWithLine extends StatelessWidget {
  const ContentHeaderWithLine({Key key, this.title, this.content}) : super(key: key);

  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Expanded(
                child: Divider(
              height: 1,
              indent: 10,
              thickness: 2,
            )),
          ],
        ),
        Container(margin: EdgeInsets.symmetric(vertical: 10), child: Text(content)),
      ],
    );
  }
}

class GroomerHeaderIdentity extends StatelessWidget {
  const GroomerHeaderIdentity({
    this.dataBridge,
    Key key,
  }) : super(key: key);
  final DataBridge dataBridge;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14, left: 10, right: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(Constants.getWebUrl() + "/" + dataBridge.getCurrentSelectedGroomer.picture.toString()),
                  fit: BoxFit.fill,
                )),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "${dataBridge.getCurrentSelectedGroomer.name}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Join Date\n${Common.convertDate(dataBridge.getCurrentSelectedGroomer.createdDate)}",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: (dataBridge.getCurrentSelectedGroomer.availability == false)
                ? HomeGroomingAvailability(
                    color: Colors.grey,
                    text: "Home Grooming Not Available",
                  )
                : HomeGroomingAvailability(
                    color: Colors.green,
                    text: "Home Grooming Available",
                  ),
          )
        ],
      ),
    );
  }
}

class HomeGroomingAvailability extends StatelessWidget {
  const HomeGroomingAvailability({Key key, this.color, this.text}) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CircleAvatar(backgroundColor: color, minRadius: 10),
        Flexible(
            fit: FlexFit.loose,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
