import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_event.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_state.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/pages/decoration_collection.dart';
import 'package:i_love_iruka/pages/widgets.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/screens/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/screens/profile/new_profile_page.dart';
import 'package:i_love_iruka/screens/register/widgets/build_services_icon.dart';
import 'package:i_love_iruka/screens/register/widgets/build_social_media_icon.dart';
import 'package:i_love_iruka/util/common.dart';
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
  Repository _repository = Repository();
  var futureFeed;
  @override
  void initState() {
    super.initState();
    futureFeed = _repository.getEventList();
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
    return Stack(children: <Widget>[
      ClipPath(
        clipper: BottomWaveClipper(),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.bottomRight,
                  begin: Alignment.topLeft,
                  colors: [
                Color(0xff558dc5).withOpacity(0.6),
                Color(0xff0b4987).withOpacity(0.6),
              ])),
        ),
      ),
      CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          snap: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
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
        ),
        SliverToBoxAdapter(
          child: FutureBuilder<EventsModel>(
            future: futureFeed,
            initialData: EventsModel(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  break;
                case ConnectionState.waiting:
                  return LoadingWidget();
                  break;
                case ConnectionState.active:
                  break;
                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return Container(
                      height: 100,
                      color: Colors.red,
                    );
                  } else {
                    return DashboardCarousel(
                      list: snapshot.data.eventList,
                    );
                  }
                  break;
              }
              return Container(
                height: 100,
              );
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        ServiceList(),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        MediaSocialList(),
        BuildProducts()
      ]),
    ]);
  }

  void printData() {
    print("lol dapat");
  }

  // 212, 85, 0,
  // 85, 141, 197
}

class MediaSocialList extends StatelessWidget {
  const MediaSocialList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 5,
      children: <Widget>[
        BuildSocialMediaIcon(
          onIconPressed: () {
            Common.showServicesDialog(
              context,
              content: "Choose Action...",
              title: "Instagram",
              link: "https://www.instagram.com/iloveiruka/",
            );
          },
          title: "Instagram",
          imageAsset: "images/assets/instagram.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            Common.showServicesDialog(
              context,
              content: "Choose Action...",
              title: "Whatsapp",
              link: "https://wa.me/6281211854630/",
            );
          },
          title: "Whatsapp",
          imageAsset: "images/assets/whatsapp.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            Common.showServicesDialog(
              context,
              content: "Choose Action...",
              title: "Youtube",
              link: "https://www.youtube.com/channel/UCohGUOh8j_gI5RTNBydOpFA",
            );
          },
          title: "Youtube",
          imageAsset: "images/assets/youtube.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            Common.showServicesDialog(
              context,
              content: "Choose Action...",
              title: "Website",
              link: "https://iloveiruka.com/",
            );
          },
          title: "Website",
          imageAsset: "images/assets/global.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            Common.showServicesDialog(
              context,
              content: "Choose Action...",
              title: "Call Us",
              phone: "02184302531",
            );
          },
          title: "Call Us",
          imageAsset: "images/assets/telephone.png",
        ),
      ],
    );
  }
}

class ServiceList extends StatelessWidget {
  const ServiceList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 5,
      children: <Widget>[
        BuildServicesIcon(
          onIconPressed: () {
            Common.showServicesDialog(context,
                content: "Choose Action...",
                title: "Shop",
                link: "https://sismarket.id/",
                phone: "+6287800042548");
          },
          title: "Shop",
          imageAsset: "images/assets/pet_shop.png",
        ),
        BuildServicesIcon(
          onIconPressed: () {
            Common.showServicesDialog(context,
                content: "Choose Action...",
                title: "Therapeutic Grooming",
                link: "https://sismarket.id/",
                phone: "+6287800042548");
          },
          title: "Grooming Salon",
          imageAsset: "images/assets/pet_grooming.png",
        ),
        BuildServicesIcon(
          onIconPressed: () {
            Common.showServicesDialog(context,
                content: "Choose Action...",
                title: "Pet Hotel",
                link: "https://sismarket.id/",
                phone: "+6287800042548");
          },
          title: "Pet Hotel",
          imageAsset: "images/assets/pet_hotel.png",
        ),
        BuildServicesIcon(
          onIconPressed: () {
            Common.showServicesDialog(context,
                content: "Choose Action...",
                title: "Pet Taxi",
                link: "https://sismarket.id/",
                phone: "+6287800042548");
          },
          title: "Pet Taxi",
          imageAsset: "images/assets/pet_taxi.png",
        ),
        BuildServicesIcon(
          onIconPressed: () {
            Common.showServicesDialog(context,
                content: "Choose Action...",
                title: "Iskhan Pet Food",
                link: "https://iskhan.id/",
                phone: "+6287800042548");
          },
          title: "Iskhan Pet Food",
          imageAsset: "images/assets/pet-spa.png",
        ),
      ],
    );
  }
}

class DashboardCarousel extends StatelessWidget {
  const DashboardCarousel({Key key, @required this.list}) : super(key: key);
  final List<EventList> list;

  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(
      builder: (context, dataBridge, _) => CarouselSlider(
        items: list.map((f) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(FeedDetail.pageAlias);
              final productList = ProductList(
                  description: f.description,
                  createdDate: f.createdDate,
                  productName: f.eventName,
                  id: f.id,
                  isActive: f.isActive,
                  link: f.link,
                  picture: f.picture,
                  priority: f.priority,
                  scheduleDate: f.scheduleDate);
              dataBridge.setProductList(productList);
            },
            child: AspectRatio(
                aspectRatio: 2 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    Constants.getWebUrl() + "/" + f.picture,
                    fit: BoxFit.contain,
                  ),
                )),
          );
        }).toList(),
        enlargeCenterPage: true,
        height: 180,
        viewportFraction: 0.8,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 8),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, size.height / 4.25);
    var firstControlPoint = new Offset(size.width / 4, size.height / 3);
    var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 4 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 3 - 40);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
