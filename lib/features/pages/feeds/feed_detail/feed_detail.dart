import 'package:flutter/material.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/widgets/cached_image.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class FeedDetail extends StatefulWidget {
  static const pageAlias = "/feed_detail_page";
  @override
  _FeedDetailState createState() => _FeedDetailState();
}

class _FeedDetailState extends State<FeedDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Feed Detail"), 
        ),
        body: Consumer<DataBridge>(
          builder: (context, dataBridge, _) => Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CachedImage(
                          url: Constants.getWebUrl() +
                              "/" +
                              dataBridge.getProductList.picture),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(dataBridge.getProductList.productName,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 8,
                            ),
                            Text(DateFormat.yMMMEd().format(DateTime.parse(
                                dataBridge.getProductList.createdDate))),
                            SizedBox(
                              height: 20,
                            ),
                            Text(dataBridge.getProductList.description
                                .toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Consumer<DataBridge>(
          builder: (context, dataBridge, _) => FloatingActionButton.extended(
            backgroundColor: Color(0xffd45500),
            onPressed: () async {
              if (dataBridge.getProductList.link == null ||
                  dataBridge.getProductList.link == "") {
                showSnackbar(context, "This Page doesn't have any link");
              } else {
                try {
                  await Common.launchURL(dataBridge.getProductList.link);
                } catch (e) {
                  showSnackbar(context, "Invalid Link Address");
                }
              }
            },
            label: Text("Go to link"),
          ),
        ));
  }

  showSnackbar(BuildContext context, String text) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(text),
    ));
  }
}
