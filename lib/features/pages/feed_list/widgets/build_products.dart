import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/features/data/dashboard_store.dart';
import 'package:i_love_iruka/features/pages/feed_list/widgets/refresh_icon.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/screens/feed_detail/feed_detail.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/widgets/cached_image.dart';
import 'package:provider/provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class BuildProducts extends StatefulWidget {
  BuildProducts({Key key}) : super(key: key);

  @override
  _BuildProductsState createState() => _BuildProductsState();
}

class _BuildProductsState extends State<BuildProducts> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StateBuilder<DashboardStore>(
      models: [Injector.getAsReactive<DashboardStore>()],
      initState: (context, initReact) => initReact.setState((fn) => fn.callProductList()),
      builder: (context, react) {
        return react.whenConnectionState(onData: (DashboardStore state) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return buildFeedContainer(react.state.getProductsList.productList[index]);
              },
              childCount: react.state.getProductsList.productList.length,
            ),
          );
        }, onError: (error) {
          return SliverToBoxAdapter(
              child: Container(
            child: Center(
              child: IconButton(
                onPressed: () {
                  react.setState((fn) => fn.callProductList(), onError: (context, err) => Fluttertoast.showToast(msg: err.toString()));
                  react.setState((fn) => fn.callEventList(), onError: (context, err) => Fluttertoast.showToast(msg: err.toString()));
                },
                icon: Icon(
                  Icons.refresh,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
            ),
          )
              //  RefreshIconWidget(
              //           onPressed: () {
              //             react.setState((fn) => fn.callProductList(), onError: (context, err) => Fluttertoast.showToast(msg: err.toString()));
              //           },
              //         ),
              );
        }, onIdle: () {
          return SliverToBoxAdapter(child: Container(width: 0.0, height: 0.0));
        }, onWaiting: () {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
      },
    );
  }

  Widget buildFeedContainer(ProductList productList) {
    final double widthMediaQuery = MediaQuery.of(context).size.width;
    return Consumer<DataBridge>(
      builder: (context, dataBridge, _) => InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(FeedDetail.pageAlias);
          dataBridge.setProductList(productList);
        },
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey[300])),
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 1,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  child: CachedImage(
                    url: Constants.getWebUrl() + "/" + productList.picture,
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
        ),
      ),
    );
  }
}
