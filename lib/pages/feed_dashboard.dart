
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_event.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_state.dart';
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/pages/widgets.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/screens/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';

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
        expandedHeight: 220,
        floating: false,
        automaticallyImplyLeading: true,
        centerTitle: true,
        pinned: true,
        title: Text("Dashboard"),
        flexibleSpace: BlocBuilder<DashboardBlocBloc, DashboardState>(
          bloc: dashboardBlocBloc,
          builder: (context, state) {
            if (state is GetEventListLoading) {
              return Center(
                  child: CircularProgressIndicator(
                backgroundColor: Colors.yellow,
              ));
            } else if (state is GetEventListCompleted) {
              return FlexibleSpaceBar(
                background: Consumer<DataBridge>(
                                  builder: (context, dataBridge, _) =>  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 0),
                    child: CarouselSlider(
                      items: state.response.eventList.map((f) {
                        return InkWell(
                          onTap : (){
  Navigator.of(context).pushNamed(FeedDetail.pageAlias);
  final productList = ProductList(description: f.description, createdDate: f.createdDate, productName: f.eventName, id: f.id, isActive: f.isActive, link: f.link, picture: f.picture, priority: f.priority, scheduleDate: f.scheduleDate); 
          dataBridge.setProductList(productList);
                          }, 
                                                child: AspectRatio(
                            
                            aspectRatio: 2/1,
                              child: Image.network(
                                
                                    Constants.getWebUrl() + "/" +  f.picture,
                                fit: BoxFit.contain,
                              )),
                        );
                      }).toList(),
                      
                      enlargeCenterPage: true,
                      height: 180,
                      viewportFraction: 0.9,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                    ),
                  ),
                ),
              );
            } else if (state is GetEventListError) {
              return Container(
                color: Colors.green,
              );
            }
            return Container();
          },
        ),
      ),
      SliverPersistentHeader(
        delegate: CustomSliverDelegate(
            expandedHeight: 100, hideTitleWhenExpanded: true),
      ),
      BuildProducts()
    ]);
  }

  // 212, 85, 0,
  // 85, 141, 197
}
