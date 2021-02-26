import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
abstract class Feed with _$Feed {
  factory Feed({
    String id,
    String title,
    String subtitle,
    String content,
    String imageUrl,
    String type,
    String typeLabel,
  }) = _Feed;
  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
