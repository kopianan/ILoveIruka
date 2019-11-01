import 'package:flutter/material.dart';
import 'package:grouped_listview/grouped_listview.dart';

class GroomerList extends StatefulWidget {
  GroomerList({Key key}) : super(key: key);

  @override
  _GroomerListState createState() => _GroomerListState();
}

class _GroomerListState extends State<GroomerList> {
  List<String> listGroomer = [
    "Anan",
    "ANdi",
    "Supermarket",
    "Indonesia Sejahtera",
    "Armada",
    "Kipas Angin",
    "ANdi",
    "Supermarket",
    "Indonesia Sejahtera",
    "Armada",
    "Kipas Angin",
    "ANdi",
    "Supermarket",
    "Indonesia Sejahtera",
    "Armada",
    "Kipas Angin"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    "Groomers",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        new Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        new Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Nama User 1",
                      style: TextStyle(fontSize: 20),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    subtitle: Text("My Card"),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) {
                   
                    return InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("/groomer_detail"); 
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 50,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  listGroomer[index],
                                  style: TextStyle(fontSize: 20),
                                )),
                                Divider(height: 1,color: Colors.grey,),
                          ],
                        ));
                  },
                  childCount: listGroomer.length,
               ),
            ),
          ],
        ),
      ),
    ));
  }
}
