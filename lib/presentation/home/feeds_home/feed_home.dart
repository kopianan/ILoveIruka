import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/feed_home.dart/feed_controller.dart';
import 'package:i_love_iruka/application/feed_home.dart/feed_home_bloc.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/domain/feed_home/feed_failure.dart';
import 'package:i_love_iruka/domain/feed_home/menu_data_model.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/feed_detail/feed_detail_page.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedHome extends StatefulWidget {
  @override
  _FeedHomeState createState() => _FeedHomeState();
}

class _FeedHomeState extends State<FeedHome>
    with AutomaticKeepAliveClientMixin<FeedHome> {
  @override
  bool get wantKeepAlive => true;

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  int _current = 0;

  final feedController = Get.put(FeedController());

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    // if failed,use loadFailed(),if no data return,use LoadNodata()

    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    const double _horizontalMargin = 15;
    const double _verticalMargin = 10;
    return SafeArea(
      child: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: WaterDropHeader(),
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus mode) {
            Widget body;
            if (mode == LoadStatus.idle) {
              body = Text("pull up load");
            } else if (mode == LoadStatus.loading) {
              body = CupertinoActivityIndicator();
            } else if (mode == LoadStatus.failed) {
              body = Text("Load Failed!Click retry!");
            } else if (mode == LoadStatus.canLoading) {
              body = Text("release to load more");
            } else {
              body = Text("No more Data");
            }
            return Container(
              height: 55.0,
              child: Center(child: body),
            );
          },
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: _horizontalMargin, vertical: _verticalMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome,\nAnan Alfred",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.image,
                    color: Colors.black,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset.fromDirection(45, 2))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            ),
          )),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 10),
            sliver: SliverToBoxAdapter(
              child: BlocProvider(
                create: (context) =>
                    getIt<FeedHomeBloc>()..add(FeedHomeEvent.getTopFeedData()),
                child: Container(
                  child: BlocConsumer<FeedHomeBloc, FeedHomeState>(
                    listener: (context, state) {
                      //set top feed data
                      state.maybeMap(
                        orElse: () {},
                        failOrSuccessGetData: (val) {
                          val.responseOptions.fold(
                              () {},
                              (a) => a.fold(
                                    (l) {},
                                    (r) {
                                      feedController.setTopFeed(r);
                                    },
                                  ));
                        },
                      );
                    },
                    builder: (context, state) {
                      return onGetTopFeed(state);
                    },
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: sectionTitle(_horizontalMargin, "Features"),
          ),
          SliverToBoxAdapter(
              child: BlocProvider(
                  create: (context) => getIt<FeedHomeBloc>()
                    ..add(FeedHomeEvent.getHomeMenuList()),
                  child: Container(
                    child: BlocConsumer<FeedHomeBloc, FeedHomeState>(
                      listener: (context, state) {
                        print(state);
                      },
                      builder: (context, state) => onGetHomeMenu(state),
                    ),
                  ))),
          SliverToBoxAdapter(
            child: sectionTitle(_horizontalMargin, "Newsletter"),
          ),
          SliverToBoxAdapter(
            child: BlocProvider(
              create: (context) =>
                  getIt<FeedHomeBloc>()..add(FeedHomeEvent.getBottomFeedData()),
              child: Container(
                child: BlocConsumer<FeedHomeBloc, FeedHomeState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () {},
                      failOrSuccessGetDataBottom: (val) {
                        val.responseOptions.fold(
                            () {},
                            (a) => a.fold(
                                  (l) {},
                                  (r) {
                                    feedController.setBottomFeed(r);
                                  },
                                ));
                      },
                    );
                  },
                  builder: (context, state) {
                    return onGetBottomFeed(state);
                  },
                ),
              ),
            ),
          ),
          // SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          //   return newsletterItem(_horizontalMargin);
          // }))
        ]),
      ),
    );
  }

  Widget onGetHomeMenu(FeedHomeState state) {
    var loadingContainer = AspectRatio(
        aspectRatio: 3,
        child: Container(child: Center(child: CircularProgressIndicator())));
    return state.maybeMap(
      orElse: () => loadingContainer,
      onGetHomeMenuList: (val) {
        if (val.isLoading) {
          return loadingContainer;
        } else {
          return val.homeMenuData.fold(
              () => loadingContainer,
              (a) => a.fold(
                    (l) => loadingContainer,
                    (r) => _featuresMenuGrid(r),
                  ));
        }
      },
    );
  }

  Container _featuresMenuGrid(List<MenuDataModel> listHome) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: listHome.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemBuilder: (context, index) {
          return ServiceMenuItem(
            assetUrl: Constants.getStagingUrl() + listHome[index].imageUrl,
            name: listHome[index].label,
            onClick: () {},
          );
        },
      ),
    );
  }

  Widget onGetTopFeed(FeedHomeState state) {
    var loadingContainer = AspectRatio(
        aspectRatio: 3,
        child: Container(child: Center(child: CircularProgressIndicator())));
    return state.maybeMap(
        orElse: () => Container(),
        failOrSuccessGetData: (val) {
          if (val.isLoading) {
            return loadingContainer;
          } else {
            return val.responseOptions.fold(
                () => loadingContainer,
                (a) => a.fold(
                    (l) => loadingContainer,
                    (r) => GetX<FeedController>(
                          builder: (controller) => CarouselSlider(
                            options: carouselOptions(),
                            items: controller.getTopFeed
                                .map((item) => carouselImageContainer(item))
                                .toList(),
                          ),
                        )));
          }
        });
  }

  Widget onGetBottomFeed(FeedHomeState state) {
    var loadingContainer =
        Container(child: Center(child: CircularProgressIndicator()));
    return state.maybeMap(
      orElse: () => Container(),
      failOrSuccessGetDataBottom: (val) {
        if (val.isLoading) {
          return loadingContainer;
        } else {
          return val.responseOptions.fold(
              () => loadingContainer,
              (a) => a.fold(
                  (l) => loadingContainer,
                  (r) => GetX<FeedController>(
                        builder: (controller) => Container(
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controller.getBottomFeed.length,
                                itemBuilder: (context, index) {
                                  return newsletterItem(
                                      controller.getBottomFeed[index]);
                                })),
                      )));
        }
      },
    );
  }

  Container sectionTitle(double _horizontalMargin, String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: _horizontalMargin, vertical: 10),
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Container newsletterItem(Feed feed) {
    const double _horizontalMargin = 15;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: _horizontalMargin, vertical: 5),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(
                        Constants.getWebUrl() + '/' + feed.picture),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(feed.productName,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      feed.description,
                      maxLines: 3,
                      style: TextStyle(fontSize: 11),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(children: [
                    Icon(
                      Icons.timelapse,
                      color: Colors.grey,
                      size: 15,
                    ),
                    Text(
                      "12 - Feb - 2021",
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  CarouselOptions carouselOptions() {
    return CarouselOptions(
      autoPlay: true,
      aspectRatio: 3.0,
      autoPlayInterval: Duration(seconds: 10),
      enlargeCenterPage: true,
    );
  }

  Container carouselImageContainer(Feed item) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Image.network(
              Constants.getWebUrl() + "/" + item.picture,
              fit: BoxFit.cover,
              width: 1000.0,
              loadingBuilder: (context, child, loading) {
                if (loading == null)
                  return child;
                else
                  return Center(
                    child: CircularProgressIndicator(
                      value: (loading.expectedTotalBytes != null)
                          ? loading.cumulativeBytesLoaded /
                              loading.expectedTotalBytes
                          : null,
                    ),
                  );
              },
              errorBuilder: (context, exception, err) {
                return Image.asset(
                  'images/assets/instagram.png',
                  fit: BoxFit.cover,
                  width: 1000.0,
                );
              },
            )),
      ),
    );
  }

  // List<ServiceMenuItem> listServiceMenu = [
  //   ServiceMenuItem(
  //     assetPath: "images/assets/pet_grooming.png",
  //     name: "Sispet",
  //     onClick: () {
  //       launch("https://sispet.id");
  //     },
  //   ),
  //   ServiceMenuItem(
  //     assetPath: "images/assets/aesthetic.png",
  //     name: "Pet Aesthetic",
  //     onClick: () {
  //       launch("https://iloveiruka.com/salon-therapy/");
  //     },
  //   ),
  //   ServiceMenuItem(
  //       assetPath: "images/assets/pet_school.png",
  //       name: "Pet School",
  //       onClick: () {
  //         launch("https://iloveiruka.com/iruka-grooming-school/");
  //       }),
  //   ServiceMenuItem(
  //     assetPath: "images/assets/vet_corner.png",
  //     name: "Vet Corner",
  //     onClick: () {
  //       launch("https://iloveiruka.com/vet-corner/");
  //     },
  //   ),
  //   ServiceMenuItem(
  //     assetPath: "images/assets/pet_hotel.png",
  //     name: "Pet Sitting",
  //     onClick: () {
  //       launch("https://wa.me/6281211854630");
  //     },
  //   ),
  //   ServiceMenuItem(
  //     assetPath: "images/assets/point_food.png",
  //     name: "Booking",
  //     onClick: () {
  //       launch("https://wa.me/6281211854630");
  //     },
  //   ),
  //   ServiceMenuItem(
  //     assetPath: "images/assets/telephone.png",
  //     name: "Contact",
  //     onClick: () {
  //       Get.dialog(AlertDialog(
  //         title: Text("Contact"),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             ListTile(
  //               leading: Container(
  //                   height: 30,
  //                   width: 30,
  //                   child: Image.asset('images/assets/whatsapp.png')),
  //               title: Text("Whatsapp"),
  //               onTap: () {
  //                 Get.back();
  //                 launch("https://wa.me/6281211854630");
  //               },
  //             ),
  //             ListTile(
  //               leading: Container(
  //                   height: 30,
  //                   width: 30,
  //                   child: Image.asset('images/assets/youtube.png')),
  //               title: Text("Youtube"),
  //               onTap: () {
  //                 Get.back();
  //                 launch(
  //                     "https://www.youtube.com/channel/UCohGUOh8j_gI5RTNBydOpFA/");
  //               },
  //             ),
  //             ListTile(
  //               leading: Container(
  //                   height: 30,
  //                   width: 30,
  //                   child: Image.asset('images/assets/instagram.png')),
  //               title: Text("Instagram"),
  //               onTap: () {
  //                 Get.back();
  //                 launch("https://instagram.com/iloveiruka");
  //               },
  //             ),
  //           ],
  //         ),
  //       ));
  //     },
  //   ),
  // ];
}

class ServiceMenuItem extends StatelessWidget {
  const ServiceMenuItem(
      {Key key,
      @required this.assetUrl,
      @required this.name,
      @required this.onClick})
      : super(key: key);

  final String assetUrl;
  final String name;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            onClick();
          },
          child: Container(
            width: 40,
            height: 40,
            child: Image.network(assetUrl),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
            width: double.infinity,
            // constraints: BoxConstraints(maxWidth: 80,),
            alignment: Alignment.topCenter,
            child: Text(
              name,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ))
      ],
    );
  }
}

class FeedBottomContent extends StatelessWidget {
  const FeedBottomContent({Key key, @required this.feed}) : super(key: key);
  final Feed feed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(1.0, 2.0), //(x,y)
          blurRadius: 6.0,
        ),
      ]),
      child: InkWell(
        onTap: () {
          Get.toNamed(FeedDetailPage.TAG, arguments: feed);
        },
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Container(
                color: Colors.white,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.network(
                            Constants.getWebUrl() + feed.picture,
                            fit: BoxFit.contain,
                            width: 1000.0),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Divider(
                            height: 1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            feed.productName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5, top: 5),
                            child: Text(
                              feed.description,
                              style: TextStyle(fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                          // Container(
                          //   margin: EdgeInsets.only(top: 10),
                          //   alignment: Alignment.topRight,
                          //   child: Icon(
                          //     Icons.more_vert,
                          //     color: Colors.black,
                          //     size: 25,
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}

class CarouselLoading extends StatelessWidget {
  const CarouselLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70),
      height: 200,
      width: double.infinity,
      color: Colors.grey,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
