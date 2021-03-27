part of 'feed_home_bloc.dart';

@freezed
abstract class FeedHomeEvent with _$FeedHomeEvent {
  const factory FeedHomeEvent.getTopFeedData() = _GetTopFeedData;
  const factory FeedHomeEvent.getBottomFeedData() = _GetBottomFeedData;
  const factory FeedHomeEvent.getHomeMenuList() = _GetHomeMenuList;
  const factory FeedHomeEvent.getSingleFeed(String feedId) = _GetSingleFeed;
}
