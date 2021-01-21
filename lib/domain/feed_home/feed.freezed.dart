// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Feed _$FeedFromJson(Map<String, dynamic> json) {
  return TopFeedData.fromJson(json);
}

/// @nodoc
class _$FeedTearOff {
  const _$FeedTearOff();

// ignore: unused_element
  TopFeedData topFeedData(
      {@JsonKey(name: 'ProductName') String productName,
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
      @JsonKey(name: 'IsActive') bool isActive}) {
    return TopFeedData(
      productName: productName,
      description: description,
      link: link,
      picture: picture,
      priority: priority,
      scheduleDate: scheduleDate,
      eventStatus: eventStatus,
      id: id,
      createdDate: createdDate,
      createdBy: createdBy,
      modifiedDate: modifiedDate,
      modifiedBy: modifiedBy,
      isActive: isActive,
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
  @JsonKey(name: 'ProductName')
  String get productName;
  @JsonKey(name: 'Description')
  String get description;
  @JsonKey(name: 'Link')
  String get link;
  @JsonKey(name: 'Picture')
  String get picture;
  @JsonKey(name: 'Priority')
  int get priority;
  @JsonKey(name: 'ScheduleDate')
  String get scheduleDate;
  @JsonKey(name: 'EventStatus')
  int get eventStatus;
  @JsonKey(name: 'Id')
  String get id;
  @JsonKey(name: 'CreatedDate')
  String get createdDate;
  @JsonKey(name: 'CreatedBy')
  String get createdBy;
  @JsonKey(name: 'ModifiedDate')
  String get modifiedDate;
  @JsonKey(name: 'ModifiedBy')
  String get modifiedBy;
  @JsonKey(name: 'IsActive')
  bool get isActive;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult topFeedData(
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
            @JsonKey(name: 'IsActive') bool isActive),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topFeedData(
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
        @JsonKey(name: 'IsActive') bool isActive),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topFeedData(TopFeedData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topFeedData(TopFeedData value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FeedCopyWith<Feed> get copyWith;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ProductName') String productName,
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
      @JsonKey(name: 'IsActive') bool isActive});
}

/// @nodoc
class _$FeedCopyWithImpl<$Res> implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  final Feed _value;
  // ignore: unused_field
  final $Res Function(Feed) _then;

  @override
  $Res call({
    Object productName = freezed,
    Object description = freezed,
    Object link = freezed,
    Object picture = freezed,
    Object priority = freezed,
    Object scheduleDate = freezed,
    Object eventStatus = freezed,
    Object id = freezed,
    Object createdDate = freezed,
    Object createdBy = freezed,
    Object modifiedDate = freezed,
    Object modifiedBy = freezed,
    Object isActive = freezed,
  }) {
    return _then(_value.copyWith(
      productName:
          productName == freezed ? _value.productName : productName as String,
      description:
          description == freezed ? _value.description : description as String,
      link: link == freezed ? _value.link : link as String,
      picture: picture == freezed ? _value.picture : picture as String,
      priority: priority == freezed ? _value.priority : priority as int,
      scheduleDate: scheduleDate == freezed
          ? _value.scheduleDate
          : scheduleDate as String,
      eventStatus:
          eventStatus == freezed ? _value.eventStatus : eventStatus as int,
      id: id == freezed ? _value.id : id as String,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      modifiedDate: modifiedDate == freezed
          ? _value.modifiedDate
          : modifiedDate as String,
      modifiedBy:
          modifiedBy == freezed ? _value.modifiedBy : modifiedBy as String,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
    ));
  }
}

/// @nodoc
abstract class $TopFeedDataCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory $TopFeedDataCopyWith(
          TopFeedData value, $Res Function(TopFeedData) then) =
      _$TopFeedDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ProductName') String productName,
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
      @JsonKey(name: 'IsActive') bool isActive});
}

/// @nodoc
class _$TopFeedDataCopyWithImpl<$Res> extends _$FeedCopyWithImpl<$Res>
    implements $TopFeedDataCopyWith<$Res> {
  _$TopFeedDataCopyWithImpl(
      TopFeedData _value, $Res Function(TopFeedData) _then)
      : super(_value, (v) => _then(v as TopFeedData));

  @override
  TopFeedData get _value => super._value as TopFeedData;

  @override
  $Res call({
    Object productName = freezed,
    Object description = freezed,
    Object link = freezed,
    Object picture = freezed,
    Object priority = freezed,
    Object scheduleDate = freezed,
    Object eventStatus = freezed,
    Object id = freezed,
    Object createdDate = freezed,
    Object createdBy = freezed,
    Object modifiedDate = freezed,
    Object modifiedBy = freezed,
    Object isActive = freezed,
  }) {
    return _then(TopFeedData(
      productName:
          productName == freezed ? _value.productName : productName as String,
      description:
          description == freezed ? _value.description : description as String,
      link: link == freezed ? _value.link : link as String,
      picture: picture == freezed ? _value.picture : picture as String,
      priority: priority == freezed ? _value.priority : priority as int,
      scheduleDate: scheduleDate == freezed
          ? _value.scheduleDate
          : scheduleDate as String,
      eventStatus:
          eventStatus == freezed ? _value.eventStatus : eventStatus as int,
      id: id == freezed ? _value.id : id as String,
      createdDate:
          createdDate == freezed ? _value.createdDate : createdDate as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      modifiedDate: modifiedDate == freezed
          ? _value.modifiedDate
          : modifiedDate as String,
      modifiedBy:
          modifiedBy == freezed ? _value.modifiedBy : modifiedBy as String,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$TopFeedData implements TopFeedData {
  _$TopFeedData(
      {@JsonKey(name: 'ProductName') this.productName,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'Link') this.link,
      @JsonKey(name: 'Picture') this.picture,
      @JsonKey(name: 'Priority') this.priority,
      @JsonKey(name: 'ScheduleDate') this.scheduleDate,
      @JsonKey(name: 'EventStatus') this.eventStatus,
      @JsonKey(name: 'Id') this.id,
      @JsonKey(name: 'CreatedDate') this.createdDate,
      @JsonKey(name: 'CreatedBy') this.createdBy,
      @JsonKey(name: 'ModifiedDate') this.modifiedDate,
      @JsonKey(name: 'ModifiedBy') this.modifiedBy,
      @JsonKey(name: 'IsActive') this.isActive});

  factory _$TopFeedData.fromJson(Map<String, dynamic> json) =>
      _$_$TopFeedDataFromJson(json);

  @override
  @JsonKey(name: 'ProductName')
  final String productName;
  @override
  @JsonKey(name: 'Description')
  final String description;
  @override
  @JsonKey(name: 'Link')
  final String link;
  @override
  @JsonKey(name: 'Picture')
  final String picture;
  @override
  @JsonKey(name: 'Priority')
  final int priority;
  @override
  @JsonKey(name: 'ScheduleDate')
  final String scheduleDate;
  @override
  @JsonKey(name: 'EventStatus')
  final int eventStatus;
  @override
  @JsonKey(name: 'Id')
  final String id;
  @override
  @JsonKey(name: 'CreatedDate')
  final String createdDate;
  @override
  @JsonKey(name: 'CreatedBy')
  final String createdBy;
  @override
  @JsonKey(name: 'ModifiedDate')
  final String modifiedDate;
  @override
  @JsonKey(name: 'ModifiedBy')
  final String modifiedBy;
  @override
  @JsonKey(name: 'IsActive')
  final bool isActive;

  @override
  String toString() {
    return 'Feed.topFeedData(productName: $productName, description: $description, link: $link, picture: $picture, priority: $priority, scheduleDate: $scheduleDate, eventStatus: $eventStatus, id: $id, createdDate: $createdDate, createdBy: $createdBy, modifiedDate: $modifiedDate, modifiedBy: $modifiedBy, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopFeedData &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.scheduleDate, scheduleDate) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleDate, scheduleDate)) &&
            (identical(other.eventStatus, eventStatus) ||
                const DeepCollectionEquality()
                    .equals(other.eventStatus, eventStatus)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.modifiedDate, modifiedDate) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedDate, modifiedDate)) &&
            (identical(other.modifiedBy, modifiedBy) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedBy, modifiedBy)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(scheduleDate) ^
      const DeepCollectionEquality().hash(eventStatus) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(modifiedDate) ^
      const DeepCollectionEquality().hash(modifiedBy) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  $TopFeedDataCopyWith<TopFeedData> get copyWith =>
      _$TopFeedDataCopyWithImpl<TopFeedData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult topFeedData(
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
            @JsonKey(name: 'IsActive') bool isActive),
  }) {
    assert(topFeedData != null);
    return topFeedData(
        productName,
        description,
        link,
        picture,
        priority,
        scheduleDate,
        eventStatus,
        id,
        createdDate,
        createdBy,
        modifiedDate,
        modifiedBy,
        isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topFeedData(
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
        @JsonKey(name: 'IsActive') bool isActive),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (topFeedData != null) {
      return topFeedData(
          productName,
          description,
          link,
          picture,
          priority,
          scheduleDate,
          eventStatus,
          id,
          createdDate,
          createdBy,
          modifiedDate,
          modifiedBy,
          isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topFeedData(TopFeedData value),
  }) {
    assert(topFeedData != null);
    return topFeedData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topFeedData(TopFeedData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (topFeedData != null) {
      return topFeedData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TopFeedDataToJson(this);
  }
}

abstract class TopFeedData implements Feed {
  factory TopFeedData(
      {@JsonKey(name: 'ProductName') String productName,
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
      @JsonKey(name: 'IsActive') bool isActive}) = _$TopFeedData;

  factory TopFeedData.fromJson(Map<String, dynamic> json) =
      _$TopFeedData.fromJson;

  @override
  @JsonKey(name: 'ProductName')
  String get productName;
  @override
  @JsonKey(name: 'Description')
  String get description;
  @override
  @JsonKey(name: 'Link')
  String get link;
  @override
  @JsonKey(name: 'Picture')
  String get picture;
  @override
  @JsonKey(name: 'Priority')
  int get priority;
  @override
  @JsonKey(name: 'ScheduleDate')
  String get scheduleDate;
  @override
  @JsonKey(name: 'EventStatus')
  int get eventStatus;
  @override
  @JsonKey(name: 'Id')
  String get id;
  @override
  @JsonKey(name: 'CreatedDate')
  String get createdDate;
  @override
  @JsonKey(name: 'CreatedBy')
  String get createdBy;
  @override
  @JsonKey(name: 'ModifiedDate')
  String get modifiedDate;
  @override
  @JsonKey(name: 'ModifiedBy')
  String get modifiedBy;
  @override
  @JsonKey(name: 'IsActive')
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  $TopFeedDataCopyWith<TopFeedData> get copyWith;
}
