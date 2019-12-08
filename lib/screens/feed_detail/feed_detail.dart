import 'package:flutter/material.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/widgets/cached_image.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as prefix0;

class FeedDetail extends StatefulWidget {
  static const pageAlias = "/feed_detail_page";
  @override
  _FeedDetailState createState() => _FeedDetailState();
}

class _FeedDetailState extends State<FeedDetail> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(
      builder: (context, dataBridge, _) => Scaffold(
        appBar: AppBar(
          title: Text("Feed Detail"),
        ),
        body: Column(
          children: <Widget>[
            CachedImage(
                url: Constants.getWebUrl() +
                    "/" +
                    dataBridge.getProductList.picture),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Feed Title",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 8,
                          ),
                          Text("dd/mm/yyy"),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, \n\n from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32 \n\n from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32."),
                        ],
                      ),
                    ),
                    (dataBridge.getProductList.link == null  ||dataBridge.getProductList.link == "" )? Container() :  Container(
                      child: RaisedButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: () {
                          canLaunch(dataBridge.getProductList.link); 
                        },
                        color: Colors.amber,
                        child: Text(" Go To Link "),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
