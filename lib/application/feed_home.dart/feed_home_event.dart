part of 'feed_home_bloc.dart';

@freezed
abstract class FeedHomeEvent with _$FeedHomeEvent {
  factory FeedHomeEvent.getTopFeedData() = _GetTopFeedData;
  factory FeedHomeEvent.getBottomFeedData() = _GetBottomFeedData;
}
