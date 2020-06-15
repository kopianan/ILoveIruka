import 'package:flutter/material.dart';
import 'package:i_love_iruka/presentation/widgets/appbar_header_background.dart';
import 'package:i_love_iruka/presentation/widgets/page_header.dart';

class FeedDetailPage extends StatefulWidget {
  FeedDetailPage({Key key}) : super(key: key);

  @override
  _FeedDetailPageState createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends State<FeedDetailPage> {
  List<String> _popUpMenuItemString = ["Download", "Share"];
  String textLorem =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          PageHeader(title: "Feed Detail"),
          Container(
              margin: EdgeInsets.only(top: height * 0.1),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: EdgeInsets.symmetric(horizontal: 15),
                elevation: 5,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text("asdf"),
                        subtitle: Text("10-10-2020"),
                        trailing: PopupMenuButton(
                            icon: Icon(Icons.more_vert),
                            itemBuilder: (context) {
                              return _popUpMenuItemString
                                  .map((e) => PopupMenuItem(
                                        child: Text(e),
                                        value: e,
                                      ))
                                  .toList();
                            }),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset(
                              "images/assets/instagram.png",
                              fit: BoxFit.contain,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Title Title Title",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(textLorem)
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Visit",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 20)),
                            Icon(
                              Icons.open_in_new,
                              color: Colors.blue,
                              size: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
