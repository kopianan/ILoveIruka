import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_event.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_state.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/util/constants.dart';

import 'home_widgets.dart';

class DashboardPage1 extends StatefulWidget {
  // final EventsModel response;
  // DashboardPage1({@required this.response});

  _DashboardPage1State createState() => _DashboardPage1State();
}

class _DashboardPage1State extends State<DashboardPage1> {
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
                      return Card(
                        elevation: 4.0,
                        child: Container(
                            color: Colors.white,
                            width: double.infinity,
                            child: CachedNetworkImage(
                              imageUrl:
                                  "${Constants.getWebUrl() + "/" + f.picture}",
                              fit: BoxFit.cover,
                            )),
                      );
                    }).toList(),
                    enlargeCenterPage: true,
                    height: 180,
                    viewportFraction: 0.8,
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

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    @required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 1,
      child: Stack(
        fit: StackFit.loose,
        children: [
          SizedBox(
              height: 80,
              child: Container(
                color: Color(0xff558dc5),
              )),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: cardTopPosition > 0 ? cardTopPosition - 30 : 0,
            bottom: 0.0,
            child: Opacity(
              opacity: percent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10 * percent),
                child: Card(elevation: 20.0, child: ServicesContent()),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
