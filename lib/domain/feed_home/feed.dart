import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
abstract class Feed with _$Feed {
  factory Feed.topFeedData({
    @JsonKey(name: 'ProductName') String productName,
    @JsonKey(name: 'Description') String description,
    @JsonKey(name: 'Link') String link,
    @JsonKey(name: 'Picture') String picture,
    @JsonKey(name: 'Priority') int priority,
    @JsonKey(name: 'ScheduleDate') String scheduleDate,
    @JsonKey(name: 'EventStatus') int eventStatus,
    @JsonKey(name: 'Id') String id,
    @JsonKey(name: 'CreatedDate') String createdDate,
    @JsonKey(name: 'CreatedBy') String createdBy,
    @JsonKey(name: 'ModifiedDate') String modifiedDate,
    @JsonKey(name: 'ModifiedBy') String modifiedBy,
    @JsonKey(name: 'IsActive') bool isActive,
  }) = TopFeedData;
  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
