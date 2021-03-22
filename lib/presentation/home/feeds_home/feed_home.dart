import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/application/feed_home.dart/feed_controller.dart';
import 'package:i_love_iruka/application/feed_home.dart/feed_home_bloc.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/domain/feed_home/menu_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_formatter.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/feed_detail/feed_detail_page.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'widgets/service_menu_item.dart';

class FeedHome extends StatefulWidget {
  @override
  _FeedHomeState createState() => _FeedHomeState();
}

class _FeedHomeState extends State<FeedHome>
    with AutomaticKeepAliveClientMixin<FeedHome> {
  @override
  bool get wantKeepAlive => true;

  final feedController = Get.put(FeedController());
  final userController = Get.put(UserController());

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

  final _homeTopFeedBloc = getIt<FeedHomeBloc>();
  final _homeMenuBloc = getIt<FeedHomeBloc>();
  final _homeBottomFeedBloc = getIt<FeedHomeBloc>();
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
                  "Welcome,\n${userController.getUserData().fullName}",
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
                    _homeTopFeedBloc..add(FeedHomeEvent.getTopFeedData()),
                child: Container(
                  child: BlocConsumer<FeedHomeBloc, FeedHomeState>(
                    listener: (context, state) {
                      //set top feed data
                      state.maybeMap(
                        orElse: () {},
                        failOrSuccessGetData: (val) {
                          if (val.isLoading) print("Loading kok");
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
                      return onGetTopFeed(context, state);
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
                  create: (context) =>
                      _homeMenuBloc..add(FeedHomeEvent.getHomeMenuList()),
                  child: Container(
                    child: BlocConsumer<FeedHomeBloc, FeedHomeState>(
                      listener: (context, state) {},
                      builder: (context, state) => onGetHomeMenu(state),
                    ),
                  ))),
          SliverToBoxAdapter(
            child: sectionTitle(_horizontalMargin, "Newsletter"),
          ),
          SliverToBoxAdapter(
            child: BlocProvider(
              create: (context) =>
                  _homeBottomFeedBloc..add(FeedHomeEvent.getBottomFeedData()),
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
    var loadingContainer = Container(
        height: 300, child: Center(child: CircularProgressIndicator()));
    var errorContainer = AspectRatio(
        aspectRatio: 3,
        child: Container(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  _homeMenuBloc..add(FeedHomeEvent.getTopFeedData());
                  Fluttertoast.showToast(msg: "Refresh");
                }),
            Text("Error, Please refresh")
          ],
        ))));
    return state.maybeMap(
      orElse: () => loadingContainer,
      onGetHomeMenuList: (val) {
        if (val.isLoading) {
          return loadingContainer;
        } else {
          return val.homeMenuData.fold(
              () => loadingContainer,
              (a) => a.fold(
                    (l) => errorContainer,
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
            crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
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

  Widget onGetTopFeed(BuildContext context, FeedHomeState state) {
    var loadingContainer = AspectRatio(
        aspectRatio: 3,
        child: Container(child: Center(child: CircularProgressIndicator())));
    var errorContainer = AspectRatio(
        aspectRatio: 3,
        child: Container(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  _homeTopFeedBloc..add(FeedHomeEvent.getTopFeedData());
                  Fluttertoast.showToast(msg: "Refresh");
                }),
            Text("Error, Please refresh")
          ],
        ))));

    return state.maybeMap(
        orElse: () => Container(),
        failOrSuccessGetData: (val) {
          if (val.isLoading) {
            return loadingContainer;
          } else {
            return val.responseOptions.fold(
                () => loadingContainer,
                (a) => a.fold(
                    (l) => errorContainer,
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
    var errorContainer = AspectRatio(
        aspectRatio: 3,
        child: Container(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  _homeBottomFeedBloc..add(FeedHomeEvent.getTopFeedData());
                  Fluttertoast.showToast(msg: "Refresh");
                }),
            Text("Error, Please refresh")
          ],
        ))));
    return state.maybeMap(
      orElse: () => Container(),
      failOrSuccessGetDataBottom: (val) {
        if (val.isLoading) {
          return loadingContainer;
        } else {
          return val.responseOptions.fold(
              () => loadingContainer,
              (a) => a.fold(
                  (l) => errorContainer,
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
      margin: EdgeInsets.symmetric(horizontal: _horizontalMargin, vertical: 15),
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget newsletterItem(Feed feed) {
    const double _horizontalMargin = 15;
    return InkWell(
      onTap: () {
        Get.toNamed(FeedDetailPage.TAG, arguments: feed);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(10),
        margin:
            EdgeInsets.symmetric(horizontal: _horizontalMargin, vertical: 5),
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
                          Constants.getStagingUrl() + feed.imageUrl),
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
                      Text(feed.title,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        feed.content,
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
                        Icons.access_time_outlined,
                        color: Colors.grey,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("date",
                          style: TextStyle(color: Colors.grey, fontSize: 12))
                    ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  CarouselOptions carouselOptions() {
    return CarouselOptions(
      autoPlay: true,
      aspectRatio: 2 / 0.8,
      autoPlayInterval: Duration(seconds: 10),
      enlargeCenterPage: false,
    );
  }

  Container carouselImageContainer(Feed item) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Image.network(
            Constants.getStagingUrl() + item.imageUrl,
            fit: BoxFit.cover,
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
