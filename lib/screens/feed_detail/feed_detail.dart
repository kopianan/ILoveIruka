import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/widgets/cached_image.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as prefix0;

class FeedDetail extends StatefulWidget {
  static const pageAlias = "/feed_detail_page";
  @override
  _FeedDetailState createState() => _FeedDetailState();
}

class _FeedDetailState extends State<FeedDetail> {
  Common _common = Common() ; 
  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(
      builder: (context, dataBridge, _) => Scaffold(
        appBar: AppBar(
          title: Text("Feed Detail"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>
                  [
                    
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
                          Text(DateFormat.yMMMEd().format( DateTime.parse(dataBridge.getProductList.createdDate))),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampdeular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32."),
                        ],
                      ),
                    ),
               
                  ],
                ),
              ),
            )
          ],
        ),
     
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xffd45500),
        onPressed: () async{
        if (dataBridge.getProductList.link == null  ||dataBridge.getProductList.link == "" ) {
          Fluttertoast.showToast(msg: "This Page doesn't have any link") ; 
        }else
           await _common.launchURL(dataBridge.getProductList.link); 
      },label: Text("Go to link"),),
      ),
    );
  }
}
