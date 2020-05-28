import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/features/data/dashboard_store.dart';
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/screens/register/widgets/build_services_icon.dart';
import 'package:i_love_iruka/screens/register/widgets/build_social_media_icon.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:provider/provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/build_products.dart';
import 'widgets/refresh_icon.dart';

class FeedDashboard extends StatefulWidget {
  // final EventsModel response;
  // DashboardPage1({@required this.response});

  _FeedDashboardState createState() => _FeedDashboardState();
}

class _FeedDashboardState extends State<FeedDashboard> {
  double serviceIconFontSize = 40.0;
  var futureFeed;
  @override
  void initState() {
    print("re initstate");
    super.initState();
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
    return SafeArea(
      child: CustomScrollView(slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: StateBuilder<DashboardStore>(
              models: [Injector.getAsReactive<DashboardStore>()],
              initState: (context, initReact) => initReact.setState(
                    (fn) => fn.callEventList(),
                  ),
              builder: (context, react) {
                if (react.hasData) {
                  if (react.state.getEventsModel == null) {
                    return RefreshIconWidget(
                      onPressed: () =>
                          react.setState((fn) => fn.callEventList()),
                    );
                  } else
                    return DashboardCarousel(
                      list: react.state.getEventsModel.eventList,
                    );
                } else if (react.hasError) {
                  return Container(
                    height: 180,
                    child: Center(
                      child: Icon(
                        Icons.refresh,
                      ),
                    ),
                  );
                } else {
                  return Container(
                    height: 0.0,
                    width: 0.0,
                  );
                }
              }),
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
        // MediaSocialList(),
        BuildProducts()
      ]),
    );
  }
  // 212, 85, 0,
  // 85, 141, 197
}

class MediaSocialList extends StatefulWidget {
  const MediaSocialList({
    Key key,
  }) : super(key: key);

  @override
  _MediaSocialListState createState() => _MediaSocialListState();
}

class _MediaSocialListState extends State<MediaSocialList> {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 5,
      children: <Widget>[
        BuildSocialMediaIcon(
          onIconPressed: () {
            try {
              _launchURL("https://www.instagram.com/iloveiruka/");
            } catch (e) {
              Fluttertoast.showToast(msg: "Can not open link");
            }
          },
          title: "Instagram",
          imageAsset: "images/assets/instagram.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            _launchURL("https://wa.me/6281211854630");
            // try {
            //   _launchURL("whatsapp://send?phone=6281211854630/");
            // } on Exception catch (e) {
            //   _launchURL("https://wa.me/6281211854630");
            //   print("Error");
            // }
          },
          title: "Whatsapp",
          imageAsset: "images/assets/whatsapp.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            try {
              _launchURL(
                  "https://www.youtube.com/channel/UCohGUOh8j_gI5RTNBydOpFA");
            } catch (e) {}
          },
          title: "Youtube",
          imageAsset: "images/assets/youtube.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            try {
              _launchURL("https://iloveiruka.com/");
            } catch (e) {}
          },
          title: "Website",
          imageAsset: "images/assets/global.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            try {
              launch("tel://02184302531");
            } catch (e) {}
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
      childAspectRatio: 1 / 1.2,
      mainAxisSpacing: 5,
      crossAxisCount: 5,
      children: <Widget>[
        BuildServicesIcon(
          onIconPressed: () {
            // Common.showServicesDialog(context, content: "Choose Action...", title: "Shop", link: "https://sismarket.id/", phone: "+6287800042548");
            Common.launchURL("https://www.tokopedia.com/irukapet");
          },
          title: "Shop",
          imageAsset: "images/assets/pet_shop.png",
        ),
        BuildServicesIcon(
          onIconPressed: () {
            // Common.showServicesDialog(context, content: "Choose Action...", title: "Therapeutic Grooming", link: "https://sismarket.id/", phone: "+6287800042548");
            Common.launchURL("https://wa.me/6281211854630");
          },
          title: "Grooming Salon",
          imageAsset: "images/assets/pet_grooming.png",
        ),

        BuildSocialMediaIcon(
          onIconPressed: () {
            try {
              Common.launchURL("https://www.instagram.com/iloveiruka/");
            } catch (e) {
              Fluttertoast.showToast(msg: "Can not open link");
            }
          },
          title: "Instagram",
          imageAsset: "images/assets/instagram.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            try {
              Common.launchURL(
                  "https://www.youtube.com/channel/UCohGUOh8j_gI5RTNBydOpFA");
            } catch (e) {}
          },
          title: "Youtube",
          imageAsset: "images/assets/youtube.png",
        ),
        BuildSocialMediaIcon(
          onIconPressed: () {
            try {
              Common.launchURL("https://iloveiruka.com/");
            } catch (e) {}
          },
          title: "Website",
          imageAsset: "images/assets/global.png",
        ),
        // BuildServicesIcon(
        //   onIconPressed: () {
        //     // Common.showServicesDialog(context, content: "Choose Action...", title: "Pet Hotel", link: "https://sismarket.id/", phone: "+6287800042548");
        //     launch("tel://+6287800042548");
        //   },
        //   title: "Pet Hotel",
        //   imageAsset: "images/assets/pet_hotel.png",
        // ),
        // BuildServicesIcon(
        //   onIconPressed: () {
        //     // Common.showServicesDialog(context, content: "Choose Action...", title: "Pet Taxi", link: "https://sismarket.id/", phone: "+6287800042548");

        //     Common.launchURL("https://iloveiruka.com/");
        //   },
        //   title: "Pet Taxi",
        //   imageAsset: "images/assets/pet_taxi.png",
        // ),
        // BuildServicesIcon(
        //   onIconPressed: () {
        //     // Common.showServicesDialog(context, content: "Choose Action...", title: "Iskhan Pet Food", link: "https://iskhan.id/", phone: "+6287800042548");
        //     Common.launchURL("https://sismarket.id/");
        //   },
        //   title: "Iskhan Pet Food",
        //   imageAsset: "images/assets/pet-spa.png",
        // ),
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
              Routes.navigator.pushNamed(Routes.feedDetail);
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
            child: Container(
              margin: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  Constants.getWebUrl() + "/" + f.picture,
                  fit: BoxFit.cover,
                ),
              ),

              //   decoration: BoxDecoration(
              // image: DecorationImage(
              //     fit: BoxFit.contain,
              //     image: NetworkImage(
              //       Constants.getWebUrl() + "/" + f.picture,
              //     )),
              // )
            ),
          );
        }).toList(),
        enlargeCenterPage: false,
        viewportFraction: 0.9,
        aspectRatio: 2,
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
