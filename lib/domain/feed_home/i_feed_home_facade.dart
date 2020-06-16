import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/domain/feed_home/feed_failure.dart';

abstract class IFeedHomeFacade {
  Future<Either<FeedFailure, List<Feed>>> getTopFeedData();
  Future<Either<FeedFailure, List<Feed>>> getBottomFeedData();
}
