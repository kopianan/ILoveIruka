import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/dashboard/bloc/dashboard_bloc_g.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/pages/decoration_collection.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:i_love_iruka/widgets/cached_image.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicesContent extends StatefulWidget {
  const ServicesContent({
    Key key,
  }) : super(key: key);

  @override
  _ServicesContentState createState() => _ServicesContentState();
}

class _ServicesContentState extends State<ServicesContent> {
  Common _common = Common();
  DecorationCollection _decorationCollection = DecorationCollection();

  Future buildShowDialog(BuildContext context, String title) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "$title",
              textAlign: TextAlign.center,
            ),
            content: Text("Choose action "),
            actions: <Widget>[
              FlatButton(
                splashColor: Colors.amber,
                onPressed: () {
                  _common.launchURL("https://iloveiruka.com/");
                },
                child: Text(
                  "Visit Link",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              FlatButton(
                splashColor: Colors.amber,
                onPressed: () {
                  launch("tel://081377151395");
                },
                child: Text("Call Us", style: TextStyle(color: Colors.blue)),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () async {
                _common.launchURL("https://sismarket.id/");
              },
              child: Column(
                children: <Widget>[
                  buildIconContainer("images/assets/pet_shop.png"),
                  buildIconTitleServicesDashboard(
                    "Shop",
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                buildShowDialog(context, "Grooming Salon");
              },
              child: Column(
                children: <Widget>[
                  buildIconContainer("images/assets/pet_grooming.png"),
                  buildIconTitleServicesDashboard("Grooming Salon")
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                buildShowDialog(context, "Pet Hotel");
              },
              child: Column(
                children: <Widget>[
                  buildIconContainer("images/assets/pet_hotel.png"),
                  buildIconTitleServicesDashboard("Pet Hotel")
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                buildShowDialog(context, "Pet Taxi");
              },
              child: Column(
                children: <Widget>[
                  buildIconContainer("images/assets/pet_school.png"),
                  buildIconTitleServicesDashboard("Pet Taxi")
                ],
              ),
            ),
          ],
        ));
  }

  Container buildIconContainer(String images) {
    return Container(
        width: 60,
        height: 60,
        padding: EdgeInsets.all(10),
        decoration: _decorationCollection.boxDecorationDashboardIcon(),
        child: Image.asset(images));
  }

  Container buildIconTitleServicesDashboard(
    String title,
  ) {
    return Container(
        alignment: Alignment.topCenter,
        width: 70,
        child: Text(
          "${title}",
          maxLines: 2,
          textAlign: TextAlign.center,
        ));
  }
}

class BuildProducts extends StatefulWidget {
  BuildProducts({Key key}) : super(key: key);

  @override
  _BuildProductsState createState() => _BuildProductsState();
}

class _BuildProductsState extends State<BuildProducts> {
  DashboardBlocBloc dashboardBlocBloc = DashboardBlocBloc();
  @override
  void initState() {
    super.initState();
    dashboardBlocBloc.add(GetProductList());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBlocBloc, DashboardState>(
      bloc: dashboardBlocBloc,
      builder: (context, state) {
        if (state is GetProductListCompleted) {
          final dataFeed = state.response.productList;
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return buildFeedContainer(dataFeed[index]);
              },
              childCount: dataFeed.length,
            ),
          );
        } else if (state is GetProductListLoading) {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  Container buildFeedContainer(ProductList productList) {
    final double widthMediaQuery = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[300])),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 1,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
           
            Container(
                // height: widthMediaQuery * 0.1,

                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "${productList.productName}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            Container(
              height: widthMediaQuery,
              width: widthMediaQuery,
              // child: Image.asset("images/assets/ratio11.png", fit: BoxFit.scaleDown,),
              // child: CachedImage(
              //   url: Constants.getWebUrl() + "/" + productList.picture,
              // ),
              child: CachedImage(
                url:"http://3.bp.blogspot.com/_5pqCqLjs8WA/TGmMutN5ISI/AAAAAAAAACw/rMgIXNxHSN8/w1200-h630-p-k-no-nu/Aspect1x1.png",
                

              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                color: Colors.white,
                child: Text(
                  "Lorem \ntesntadfladhjfsad\n;ldkhflkjadhflakjdhfkljadhadfaadsfadsfdsafadsfdasfadsfdfadfflkj",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
