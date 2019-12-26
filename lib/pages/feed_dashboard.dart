import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_event.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_state.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/pages/decoration_collection.dart';
import 'package:i_love_iruka/pages/widgets.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/screens/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_widgets.dart';

class FeedDashboard extends StatefulWidget {
  // final EventsModel response;
  // DashboardPage1({@required this.response});

  _FeedDashboardState createState() => _FeedDashboardState();
}

class _FeedDashboardState extends State<FeedDashboard> {
  double serviceIconFontSize = 40.0;
  DashboardBlocBloc dashboardBlocBloc = DashboardBlocBloc();

  @override
  void initState() {
    super.initState();
    loadSharedPrefs() async {
      print("async test");
      try {
        LoginResponse user =
            LoginResponse.fromJson(await SharedPref().getLoginData());
        setState(() {
          Provider.of<DataBridge>(context, listen: false).setUserData(user);
        });
      } catch (Excepetion) {
        Scaffold.of(context).showSnackBar(SnackBar(
            content: new Text("Nothing found!"),
            duration: const Duration(milliseconds: 500)));
      }
    }

    // dashboardBlocBloc.add(GetProductList());
    dashboardBlocBloc.add(GetEventList());
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(NewProfilePage.id);
            },
            icon: Icon(Icons.person),
          )
        ],
        // expandedHeight: 220,
        floating: true,
        automaticallyImplyLeading: true,
        title: Text("Dashboard"),
        // flexibleSpace: BlocBuilder<DashboardBlocBloc, DashboardState>(
        //   bloc: dashboardBlocBloc,
        //   builder: (context, state) {
        //     if (state is GetEventListLoading) {
        //       return Center(
        //           child: CircularProgressIndicator(
        //         backgroundColor: Colors.yellow,
        //       ));
        //     } else if (state is GetEventListCompleted) {
        //       return FlexibleSpaceBar(
        //         background: Consumer<DataBridge>(
        //           builder: (context, dataBridge, _) => Container(
        //             alignment: Alignment.bottomCenter,
        //             padding: EdgeInsets.only(bottom: 0),
        //             child: CarouselSlider(
        //               items: state.response.eventList.map((f) {
        //                 return InkWell(
        //                   onTap: () {
        //                     Navigator.of(context)
        //                         .pushNamed(FeedDetail.pageAlias);
        //                     final productList = ProductList(
        //                         description: f.description,
        //                         createdDate: f.createdDate,
        //                         productName: f.eventName,
        //                         id: f.id,
        //                         isActive: f.isActive,
        //                         link: f.link,
        //                         picture: f.picture,
        //                         priority: f.priority,
        //                         scheduleDate: f.scheduleDate);
        //                     dataBridge.setProductList(productList);
        //                   },
        //                   child: AspectRatio(
        //                       aspectRatio: 2 / 1,
        //                       child: Image.network(
        //                         Constants.getWebUrl() + "/" + f.picture,
        //                         fit: BoxFit.contain,
        //                       )),
        //                 );
        //               }).toList(),
        //               enlargeCenterPage: true,
        //               height: 180,
        //               viewportFraction: 0.9,
        //               autoPlay: true,
        //               autoPlayInterval: Duration(seconds: 5),
        //             ),
        //           ),
        //         ),
        //       );
        //     } else if (state is GetEventListError) {
        //       return Container(
        //         color: Colors.blue,
        //       );
        //     }
        //     return Container();
        //   },
        // ),
      ),
      // SliverPersistentHeader(
      //   delegate: CustomSliverDelegate(
      //       expandedHeight: 100, hideTitleWhenExpanded: true),
      // ),

      SliverGrid.count(
        crossAxisCount: 4,
        children: <Widget>[
          BuildServicesIcon(
            onIconPressed: () {
              printData();
            },
            title: "Grooming Salon",
          ),
          BuildServicesIcon(
            onIconPressed: () {
              showDialog(
                  context: (context),
                  builder: (context) => ShowAlertDialog(
                        content: "Choose Action",
                        title: "Grooming Salon",
                      ));
            },
            title: "Grooming Salon",
          ),
        ],
      ),

      BuildProducts()
    ]);
  }

  void printData() {
    print("lol dapat");
  }

  // 212, 85, 0,
  // 85, 141, 197
}

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({
    Key key,
    String link,
    String phone,
    @required String title,
    @required String content,
  })  : _link = link,
        _phone = phone,
        _content = content,
        _title = title,
        super(key: key);
  final String _link;
  final String _phone;
  final String _title;
  final String _content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("$_title"),
      content: Text("$_content"),
      actions: <Widget>[
        (_link != null)
            ? FlatButton(
                child: Text("Visit Link"),
                onPressed: () {
                  Common.launchURL("$_link");
                },
              )
            : Container(),
        (_phone != null)
            ? FlatButton(
                child: Text("Call"),
                onPressed: () {
                  launch("tel://$_phone");
                },
              )
            : Container(),
      ],
    );
  }
}

class BuildServicesIcon extends StatelessWidget {
  const BuildServicesIcon(
      {Key key, @required this.title, this.image, this.onIconPressed})
      : super(key: key);
  final String title;
  final String image;
  final Function onIconPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onIconPressed();
      },
      child: Column(
        children: <Widget>[
          Container(
            width: 60,
            decoration: DecorationCollection().boxDecorationDashboardIcon(),
            height: 60,
          ),
          Container(
              alignment: Alignment.topCenter,
              width: 70,
              child: Text(
                "${title}",
                maxLines: 2,
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
