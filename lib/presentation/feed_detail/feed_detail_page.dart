import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_formatter.dart';
import 'package:i_love_iruka/presentation/core/photo_viewer_page.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
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
    super.initState();
  }

  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                                  arguments: Constants.getStagingUrl() +
                                      _currentFeed.imageUrl);
                            },
                            child: Container(
                              height: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          Constants.getStagingUrl() +
                                              _currentFeed.imageUrl),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              _currentFeed.title,
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
                              "date",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(height: 20),
                          Markdown(
                            padding: EdgeInsets.zero,
                            controller: scrollController,
                            data: _currentFeed.content,
                            shrinkWrap: true,
                            selectable: true,
                            styleSheetTheme:
                                MarkdownStyleSheetBaseTheme.material,
                            onTapLink: (link) {
                              launch(link);
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
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            //   child: BtnPrimaryBlue(text: "Go to link"),
            // ),
          ],
        ),
      ),
    );
  }
}
