import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_event.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_state.dart';
import 'package:i_love_iruka/pages/widgets.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/util/constants.dart';

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
              final dataResp = state.response.eventList;
              return FlexibleSpaceBar(
                background: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 0),
                  child: CarouselSlider(
                    items: dataResp.map((f) {
                      return AspectRatio(
                        
                        aspectRatio: 2/1,
                          child: CachedNetworkImage(
                            
                            imageUrl:
                                "http://webstyle.unicomm.fsu.edu/3.2/img/placeholders/ratio-2-1.png",
                            fit: BoxFit.contain,
                          ));
                    }).toList(),
                    enlargeCenterPage: true,
                    height: 180,
                    viewportFraction: 0.9,
                    autoPlay: true,
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
