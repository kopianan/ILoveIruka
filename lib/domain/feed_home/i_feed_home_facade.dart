import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/domain/feed_home/feed_failure.dart';
import 'package:i_love_iruka/domain/feed_home/menu_data_model.dart';

abstract class IFeedHomeFacade {
  Future<Either<FeedFailure, List<Feed>>> getTopFeedData();
  Future<Either<FeedFailure, List<Feed>>> getBottomFeedData();
  Future<Either<FeedFailure, List<MenuDataModel>>> getHomeMenuList();
  Future<Either<FeedFailure, Feed>> getSingleFeedData(String feedId);
  Future<Either<FeedFailure, List<List<dynamic>>>> refreshHome();
}
