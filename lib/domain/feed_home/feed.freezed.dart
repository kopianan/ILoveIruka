// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Feed _$FeedFromJson(Map<String, dynamic> json) {
  return _Feed.fromJson(json);
}

/// @nodoc
class _$FeedTearOff {
  const _$FeedTearOff();

// ignore: unused_element
  _Feed call(
      {String id,
      String title,
      String subtitle,
      String content,
      String imageUrl,
      String type,
      String typeLabel}) {
    return _Feed(
      id: id,
      title: title,
      subtitle: subtitle,
      content: content,
      imageUrl: imageUrl,
      type: type,
      typeLabel: typeLabel,
    );
  }

// ignore: unused_element
  Feed fromJson(Map<String, Object> json) {
    return Feed.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Feed = _$FeedTearOff();

/// @nodoc
mixin _$Feed {
  String get id;
  String get title;
  String get subtitle;
  String get content;
  String get imageUrl;
  String get type;
  String get typeLabel;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FeedCopyWith<Feed> get copyWith;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String subtitle,
      String content,
      String imageUrl,
      String type,
      String typeLabel});
}

/// @nodoc
class _$FeedCopyWithImpl<$Res> implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  final Feed _value;
  // ignore: unused_field
  final $Res Function(Feed) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subtitle = freezed,
    Object content = freezed,
    Object imageUrl = freezed,
    Object type = freezed,
    Object typeLabel = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      content: content == freezed ? _value.content : content as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      type: type == freezed ? _value.type : type as String,
      typeLabel: typeLabel == freezed ? _value.typeLabel : typeLabel as String,
    ));
  }
}

/// @nodoc
abstract class _$FeedCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$FeedCopyWith(_Feed value, $Res Function(_Feed) then) =
      __$FeedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String subtitle,
      String content,
      String imageUrl,
      String type,
      String typeLabel});
}

/// @nodoc
class __$FeedCopyWithImpl<$Res> extends _$FeedCopyWithImpl<$Res>
    implements _$FeedCopyWith<$Res> {
  __$FeedCopyWithImpl(_Feed _value, $Res Function(_Feed) _then)
      : super(_value, (v) => _then(v as _Feed));

  @override
  _Feed get _value => super._value as _Feed;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subtitle = freezed,
    Object content = freezed,
    Object imageUrl = freezed,
    Object type = freezed,
    Object typeLabel = freezed,
  }) {
    return _then(_Feed(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      content: content == freezed ? _value.content : content as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      type: type == freezed ? _value.type : type as String,
      typeLabel: typeLabel == freezed ? _value.typeLabel : typeLabel as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Feed implements _Feed {
  _$_Feed(
      {this.id,
      this.title,
      this.subtitle,
      this.content,
      this.imageUrl,
      this.type,
      this.typeLabel});

  factory _$_Feed.fromJson(Map<String, dynamic> json) =>
      _$_$_FeedFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String content;
  @override
  final String imageUrl;
  @override
  final String type;
  @override
  final String typeLabel;

  @override
  String toString() {
    return 'Feed(id: $id, title: $title, subtitle: $subtitle, content: $content, imageUrl: $imageUrl, type: $type, typeLabel: $typeLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Feed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.typeLabel, typeLabel) ||
                const DeepCollectionEquality()
                    .equals(other.typeLabel, typeLabel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(typeLabel);

  @JsonKey(ignore: true)
  @override
  _$FeedCopyWith<_Feed> get copyWith =>
      __$FeedCopyWithImpl<_Feed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FeedToJson(this);
  }
}

abstract class _Feed implements Feed {
  factory _Feed(
      {String id,
      String title,
      String subtitle,
      String content,
      String imageUrl,
      String type,
      String typeLabel}) = _$_Feed;

  factory _Feed.fromJson(Map<String, dynamic> json) = _$_Feed.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get content;
  @override
  String get imageUrl;
  @override
  String get type;
  @override
  String get typeLabel;
  @override
  @JsonKey(ignore: true)
  _$FeedCopyWith<_Feed> get copyWith;
}
