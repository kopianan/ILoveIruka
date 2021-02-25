import 'package:get/state_manager.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';

class FeedController extends GetxController {
  final topFeed = List<Feed>().obs;
  final bottomFeed = List<Feed>().obs;

  @override
  void onInit() {
    super.onInit();
  }

  void setTopFeed(List<Feed> listTopFeed) {
    this.topFeed.assignAll(listTopFeed);
  }

  void setBottomFeed(List<Feed> listBottomFeed) {
    this.bottomFeed.assignAll(listBottomFeed);
  }

  List<Feed> get getTopFeed => this.topFeed;
  List<Feed> get getBottomFeed => this.bottomFeed;
}
