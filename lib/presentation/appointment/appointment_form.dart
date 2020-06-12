import 'package:flutter/material.dart';

class AppointmentForm extends StatefulWidget {
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  List<String> petList = ["asdf", "asdf", "asdf", "asdf", "akjsdhf"];
  var height;
  var width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: new Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height * .20,
                color: Colors.blue,
              ),
            ],
          ),
          new Container(
            height: 300,
            alignment: Alignment.topCenter,
            padding: new EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .10,
                right: 20.0,
                left: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Container(
                  width: MediaQuery.of(context).size.width,
                  child: new Card(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("selected pet : 1"),
                              Text("see all >")
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: petList.length,
                            itemBuilder: (context, index) => Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: PetItemWidget())
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class PetItemWidget extends StatelessWidget {
  const PetItemWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.lightBlueAccent, width: 4)),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 110,
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/7/7c/Aspect_ratio_16_9_example.jpg",
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                  ),
                  Container(
                    // alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "Dog Food",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  )
                ],
              ))),
    );
  }
}
