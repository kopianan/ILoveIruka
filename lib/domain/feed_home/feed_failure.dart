import 'package:freezed_annotation/freezed_annotation.dart';
part 'feed_failure.freezed.dart';

@freezed
abstract class FeedFailure with _$FeedFailure {
  const factory FeedFailure.badRequest() = _BadRequest;
  const factory FeedFailure.serverError() = _ServerError;
  const factory FeedFailure.notFound() = _NotFound;
  const factory FeedFailure.dataIsEmpty() = _DataIsEmpty;
}
