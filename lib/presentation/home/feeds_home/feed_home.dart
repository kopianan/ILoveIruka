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

class FeedHome extends StatefulWidget {
  @override
  _FeedHomeState createState() => _FeedHomeState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class _FeedHomeState extends State<FeedHome>
    with AutomaticKeepAliveClientMixin<FeedHome> {
  @override
  bool get wantKeepAlive => true;
  
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image.network(item, fit: BoxFit.cover, width: 1000.0)),
            ),
          ))
      .toList();
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
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
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
                                  (r) => CarouselLoading(),
                                ),
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
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  servicesMenu(),
                                  servicesMenu(),
                                  servicesMenu(),
                                  servicesMenu(),
                                ],
                              ),
                              // SizedBox(
                              //   height: 20,
                              // ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceEvenly,
                              //   children: <Widget>[
                              //     servicesMenu(),
                              //     servicesMenu(),
                              //     servicesMenu(),
                              //     servicesMenu(),
                              //   ],
                              // ),
                            ],
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

  Column _buildTopFeedDataContent() {
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
                            child: Image.network(item,
                                fit: BoxFit.cover, width: 1000.0)),
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

  Column servicesMenu() {
    return Column(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
        ),
        Container(
            constraints: BoxConstraints(maxWidth: 70),
            child: Text("Gocarsdfsd sdf"))
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
