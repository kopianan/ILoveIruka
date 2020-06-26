import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/feed_home.dart/feed_home_bloc.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/domain/feed_home/feed_failure.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/widgets/appbar_header_background.dart';
import 'package:i_love_iruka/routes/router.gr.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedHome extends StatefulWidget {
  @override
  _FeedHomeState createState() => _FeedHomeState();
}

class _FeedHomeState extends State<FeedHome>
    with AutomaticKeepAliveClientMixin<FeedHome> {
  @override
  bool get wantKeepAlive => true;

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<FeedHomeBloc>()..add(FeedHomeEvent.getBottomFeedData()),
      child: BlocListener<FeedHomeBloc, FeedHomeState>(
        listener: (context, state) {
          state.map(
            initial: (e) {},
            failOrSuccessGetDataBottom: (e) {
              if (e.isLoading) {
                print("BOTTOM Is Loading Data");
              }
              e.responseOptions.fold(
                  () => null,
                  (a) => a.fold(
                        (l) => l.map(
                          badRequest: (e) => print("BOTTOM Bad Request"),
                          serverError: (e) => print("BOTTOM Server Error"),
                          notFound: (e) => print("BOTTOM NotFound"),
                          dataIsEmpty: (e) => print("BOTTOM Data is empty"),
                        ),
                        (r) => print("BOTTOM Datanya ada"),
                      ));
            },
            failOrSuccessGetData: (e) {
              if (e.isLoading) {
                print("Is Loading Data");
              }
              e.responseOptions.fold(
                  () => null,
                  (a) => a.fold(
                        (l) => l.map(
                          badRequest: (e) => print("Bad Request"),
                          serverError: (e) => print("Server Error"),
                          notFound: (e) => print("NotFound"),
                          dataIsEmpty: (e) => print("Data is empty"),
                        ),
                        (r) => print("Datanya ada"),
                      ));
            },
          );
        },
        child: SingleChildScrollView(
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              AppBarHeaderBackground(),
              SafeArea(
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      // InkWell(
                      //   onTap: () {},
                      //   child: Icon(
                      //     Icons.notifications_none,
                      //     color: Colors.white,
                      //     size: 30,
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  BlocProvider(
                    create: (context) => getIt<FeedHomeBloc>()
                      ..add(FeedHomeEvent.getTopFeedData()),
                    child: BlocBuilder<FeedHomeBloc, FeedHomeState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          orElse: () => CarouselLoading(),
                          failOrSuccessGetData: (e) {
                            if (e.isLoading)
                              return CarouselLoading();
                            else
                              return e.responseOptions.fold(
                                () => CarouselLoading(),
                                (a) => a.fold(
                                    (l) => CarouselError(feedFailure: l),
                                    (r) => _buildTopFeedDataContent(r)),
                              );
                          },
                        );
                        // return _buildTopFeedDataContent();
                      },
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: GridView.builder(

                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    childAspectRatio: 01,

                                    mainAxisSpacing: 10),
                            itemCount: listServiceMenu.length,
                            itemBuilder: (context, index) =>
                                listServiceMenu[index],
                          ),
                        ),
                      )),
                  BlocProvider(
                      create: (context) => getIt<FeedHomeBloc>()
                        ..add(FeedHomeEvent.getBottomFeedData()),
                      child: BlocBuilder<FeedHomeBloc, FeedHomeState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            failOrSuccessGetDataBottom: (e) {
                              if (e.isLoading) {
                                return Container(
                                  alignment: Alignment.center,
                                  child: CircularProgressIndicator(),
                                );
                              } else {
                                return e.responseOptions.fold(
                                    () => Container(child: Text("Option")),
                                    (a) => a.fold(
                                        (l) =>
                                            Container(child: Text("Tidak ada")),
                                        (r) => Container(
                                              child: ListView.builder(
                                                  itemCount: r.length,
                                                  shrinkWrap: true,
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  itemBuilder:
                                                      (context, index) {
                                                    return FeedBottomContent(
                                                      feed: r[index],
                                                    );
                                                  }),
                                            )));
                              }
                            },
                            orElse: () => Container(child: Text("Or Else")),
                          );

                          // FeedBottomContent();
                        },
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildTopFeedDataContent(List<Feed> imgList) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 70),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              autoPlayInterval: Duration(seconds: 10),
              enlargeCenterPage: true,
            ),
            items: imgList
                .map((item) => Container(
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Image.network(
                                Constants.getWebUrl() + item.picture,
                                fit: BoxFit.cover,
                                width: 1000.0)),
                      ),
                    ))
                .toList(),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 3.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color(0xffFFA4A4)
                        : Color(0xffE5E5E5)),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  List<ServiceMenuItem> listServiceMenu = [
    ServiceMenuItem(
      assetPath: "images/assets/pet_shop.png",
      name: "Shop",
      onClick: () {
        launch("https://tokopedia.com/irukapet");
      },
    ),
    ServiceMenuItem(
      assetPath: "images/assets/pet_grooming.png",
      name: "Grooming Salon",
      onClick: () {
        launch("https://wa.me/6281211854630");
      },
    ),
    ServiceMenuItem(
        assetPath: "images/assets/instagram.png",
        name: "Instagram",
        onClick: () {
          launch("https://instagram.com/iloveiruka");
        }),
    ServiceMenuItem(
      assetPath: "images/assets/youtube.png",
      name: "Youtube",
      onClick: () {
        launch("https://www.youtube.com/channel/UCohGUOh8j_gI5RTNBydOpFA/");
      },
    ),
    ServiceMenuItem(
      assetPath: "images/assets/global.png",
      name: "Our Website",
      onClick: () {
        launch("https://iloveiruka.com/");
      },
    ),
  ];
}

class ServiceMenuItem extends StatelessWidget {
  const ServiceMenuItem(
      {Key key,
      @required this.assetPath,
      @required this.name,
      @required this.onClick})
      : super(key: key);

  final String assetPath;
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
            child: Image.asset(assetPath),
          ),
        ),
        SizedBox(height: 5,),
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
          ExtendedNavigator.of(context).pushNamed(Routes.feedDetailPage,
              arguments: FeedDetailPageArguments(feed: feed));
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

class CarouselError extends StatelessWidget {
  const CarouselError({this.feedFailure});
  final FeedFailure feedFailure;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 2.0,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
          ),
          items: [
            feedFailure.maybeMap(
                orElse: () => Container(
                      margin: EdgeInsets.all(10.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: InkWell(
                              onTap: () {},
                              child: Container(
                                  child: Image.asset(
                                      "images/assets/refresh.png",
                                      fit: BoxFit.cover,
                                      width: 1000.0)))),
                    ),
                dataIsEmpty: (e) => Container(
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Image.asset("images/assets/no_image.jpg",
                                fit: BoxFit.cover, width: 1000.0)),
                      ),
                    )),
          ]),
    );
  }
}
