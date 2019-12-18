import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 5),
                    Text("Active"),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.green,
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                new GroomerHeaderIdentity(
                  dataBridge: dataBridge,
                ),
                SizedBox(height: 10,),
                Divider(), 
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15, 
                      ),
                      Text("Description",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 8,
                      ),
                      Text(dataBridge.getCurrentSelectedGroomer.description)
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class 


GroomerHeaderIdentity extends StatelessWidget {
  const GroomerHeaderIdentity({
    this.dataBridge,
    Key key,
  }) : super(key: key);
  final DataBridge dataBridge;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Row(
        children: <Widget>[
           Container(
             margin: EdgeInsets.only(left: 20),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(Constants.getWebUrl()+"/"+dataBridge.getCurrentSelectedGroomer.picture.toString()),
                  fit: BoxFit.fill,
                )),
          ),
          
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "${dataBridge.getCurrentSelectedGroomer.name}",
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.only(right: 10),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          onPressed: () {
                            launch("tel://${dataBridge.getCurrentSelectedGroomer.phoneNumber}"); 
                          },
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Text("Call Groomer"))),
                            ],
                          ),
                        ),
                      )),
                      Container(
                        width: 50,
                        child: IconButton(
                          icon: Icon(Icons.content_copy,color: Colors.grey),
                          onPressed: () {
                            Clipboard.setData(new ClipboardData(text: dataBridge.getCurrentSelectedGroomer.phoneNumber));
                            Fluttertoast.showToast(msg: "Number Copied");
               
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:i_love_iruka/models/model/user_groomers_model.dart';
// import 'package:i_love_iruka/util/constants.dart';
// import 'package:i_love_iruka/widgets/color_palate.dart';

// class GroomerDetail extends StatefulWidget {
//   final ListUser data;
//   GroomerDetail({this.data});
//   @override
//   _GroomerDetailState createState() => _GroomerDetailState();
// }

// class _GroomerDetailState extends State<GroomerDetail> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var subTitleTextStyle = TextStyle(
//       color: Colors.black,
//       fontSize: 20,
//     );
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: <Widget>[
//             Container(
//               alignment: Alignment.center,
//               height: 250,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                     ColorPalate.blueGradient1,
//                     ColorPalate.blueGradient2
//                   ])),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Container(
//                       width: 150.0,
//                       height: 150.0,
//                       decoration: new BoxDecoration(
//                           shape: BoxShape.circle,
//                           image: new DecorationImage(
//                               fit: BoxFit.cover,
//                               image: new AssetImage(
//                                   "images/assets/point_food.png"
//                                   // Constants.getWebUrl() + widget.data.picture,

//                                   )))),
//                   Text(
//                     "${widget.data.name}",
//                     style: TextStyle(color: Colors.white, fontSize: 25),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(left: 10, right: 10, top: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     "Bio",
//                     style: subTitleTextStyle,
//                   ),
//                   Divider(
//                     color: Colors.grey,
//                   ),
//                   Text("${widget.data.description}")
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(left: 10, right: 10, top: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     "Address",
//                     style: subTitleTextStyle,
//                   ),
//                   Divider(
//                     color: Colors.grey,
//                   ),
//                   Text("${widget.data.address}")
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 30),
//               child: Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: <Widget>[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       FloatingActionButton.extended(
//                         backgroundColor: ColorPalate.greenWhatsapp,
//                         label: Text("Whatsapp"),
//                         icon: Icon(FontAwesomeIcons.whatsapp),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
