import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/features/data/dashboard_store.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/routes/routes.gr.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/widgets/cached_image.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
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
        return react.whenConnectionState(onData: (state) {
          if (state.getProductsList == null) {
            return SliverToBoxAdapter(
              child: Container(
                width: 0.0,
                height: 0.0,
              ),
            );
          } else {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return buildFeedContainer(state.getProductsList.productList[index]);
                },
                childCount: state.getProductsList.productList.length,
              ),
            );
          }
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
      builder: (context, dataBridge, _) => Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            onTap: () {
              dataBridge.setProductList(productList);

              Routes.navigator.pushNamed(Routes.feedDetail);
            },
            child: Container(
              decoration: BoxDecoration(
                  //  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 100, color: Colors.grey[500], spreadRadius: 100)]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      alignment: Alignment.topCenter,
                      // height: widthMediaQuery,
                      // width: widthMediaQuery,
                      child: CachedImage(
                        url: Constants.getWebUrl() + "/" + productList.picture,
                      ),
                    ),
                  ),
                  Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                                                      child: Text(
                              productList.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.share, color: Colors.black),
                                onPressed: () {
                                  Share.share("Check this out " + productList.link.toString());
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.file_download, color: Colors.black),
                                onPressed: () {
                                  savePhotoToLocal(context, Constants.getWebUrl() + "/" + productList.picture);
                                },
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  savePhotoToLocal(BuildContext context, String url) async {
    try {
      // Saved with this method.
      var imageId = await ImageDownloader.downloadImage(url);
      if (imageId == null) {
        return;
      }

      var fileName = await ImageDownloader.findName(imageId);
      var path = await ImageDownloader.findPath(imageId);
      var size = await ImageDownloader.findByteSize(imageId);
      var mimeType = await ImageDownloader.findMimeType(imageId);
      // Scaffold.of(context).showSnackBar(SnackBar(
      //   content: Text("Image downloaded to " + path),
      // ));
      Fluttertoast.showToast(msg: "Image downloaded to " + path);
    } on PlatformException catch (error) {
      print(error);
    }
  }
}
