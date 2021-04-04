import 'package:get/state_manager.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/domain/feed_home/menu_data_model.dart';

class FeedController extends GetxController {
  final topFeed = <Feed>[].obs;
  final bottomFeed = <Feed>[].obs;
  final menuList = <MenuDataModel>[].obs;

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

  void setMenuList(List<MenuDataModel> menuList) {
    this.menuList.assignAll(menuList);
  }

  List<Feed> get getTopFeed => this.topFeed;
  List<Feed> get getBottomFeed => this.bottomFeed;
  List<MenuDataModel> get getMenuData => this.menuList;
}
