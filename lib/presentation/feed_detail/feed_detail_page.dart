import 'package:flutter/material.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/presentation/widgets/page_header.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedDetailPage extends StatefulWidget {
  FeedDetailPage({Key key, @required this.feed}) : super(key: key);

  final Feed feed;
  @override
  _FeedDetailPageState createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends State<FeedDetailPage> {
  List<String> _popUpMenuItemString = ["Download", "Share"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          PageHeader(title: "Feed Detail"),
          Container(
              margin: EdgeInsets.only(top: height * 0.11, bottom: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                margin: EdgeInsets.symmetric(horizontal: 15),
                elevation: 5,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(widget.feed.createdDate),
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
                            child: Image.network(
                              Constants.getWebUrl() + widget.feed.picture,
                              fit: BoxFit.contain,
                            )),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.feed.productName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.feed.description,
                              style: TextStyle(fontSize: 17),
                            )
                          ],
                        ),
                      ),
                      (widget.feed.link.isEmpty)
                          ? Container(
                              height: 0,
                            )
                          : InkWell(
                              onTap: () {
                                launch(widget.feed.link);
                              },
                              child: Container(
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
