import 'package:freezed_annotation/freezed_annotation.dart';
part 'feed_failure.freezed.dart';

@freezed
abstract class FeedFailure with _$FeedFailure {
  const factory FeedFailure(String error) = _ResponseError;
}
