import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/feed_home.dart/feed_home_bloc.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_formatter.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/core/photo_viewer_page.dart';
import 'package:i_love_iruka/presentation/widgets/error_handling_widget.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedDetailPage extends StatefulWidget {
  static const String TAG = '/feed_detail_page';
  FeedDetailPage({Key key}) : super(key: key);

  @override
  _FeedDetailPageState createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends State<FeedDetailPage> {
  Feed _currentFeed;
  @override
  void initState() {
    _currentFeed = Get.arguments as Feed;
    print(_currentFeed);
    super.initState();
  }

  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: BlocProvider(
      create: (context) => getIt<FeedHomeBloc>()
        ..add(FeedHomeEvent.getSingleFeed(_currentFeed.id)),
      child:
          BlocConsumer<FeedHomeBloc, FeedHomeState>(listener: (context, state) {
        // TODO: implement listener
      }, builder: (context, state) {
        return state.maybeMap(
            orElse: () => onLoading(),
            onGetSingleFeedData: (data) {
              if (data.isLoading) {
                return onLoading();
              } else {
                return data.singleData.fold(
                    () => onLoading(),
                    (a) => a.fold(
                          (l) => onError(),
                          (r) => onCompleted(r),
                        ));
              }
            });
      }),
    ));
  }

  Container onLoading() {
    return Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Container onError() {
    return Container(
      child: Center(
        child: Column(
          children: [
            Icon(Icons.error, size: 60, color: Colors.grey),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, child: Text("Refresh"))
          ],
        ),
      ),
    );
  }

  Container onCompleted(Feed data) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  actions: [
                    IconButton(icon: Icon(Icons.share), onPressed: () {}),
                  ],
                ),
                SliverPadding(padding: EdgeInsets.only(top: 10)),
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(PhotoViewerPage.TAG,
                                arguments:
                                    Constants.getStagingUrl() + data.imageUrl);
                          },
                          child: Container(
                            height: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        Constants.getStagingUrl() +
                                            data.imageUrl),
                                    onError: (obj, err) {
                                      return onImageLoadingError;
                                    },
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            data.title,
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            formatStringDateLocale(data.createdAt),
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(height: 20),
                        Html(
                          data: data.content,
                          shrinkWrap: true,
                          onLinkTap: (e) {
                            launch(e);
                          },
                        ),
                        // Text(
                        //   _currentFeed.content,
                        //   style: TextStyle(
                        //       fontSize: 15, fontWeight: FontWeight.w100),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          //   child: BtnPrimaryBlue(text: "Go to link"),
          // ),
        ],
      ),
    );
  }
}
