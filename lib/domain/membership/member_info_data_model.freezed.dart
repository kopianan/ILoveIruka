// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'member_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MemberInfoDataModel _$MemberInfoDataModelFromJson(Map<String, dynamic> json) {
  return _MemberInfoDataModel.fromJson(json);
}

/// @nodoc
class _$MemberInfoDataModelTearOff {
  const _$MemberInfoDataModelTearOff();

// ignore: unused_element
  _MemberInfoDataModel call(
      {String id,
      String user,
      String memberNumber,
      MembershipDataModel type,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String startAt,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String endedAt}) {
    return _MemberInfoDataModel(
      id: id,
      user: user,
      memberNumber: memberNumber,
      type: type,
      startAt: startAt,
      endedAt: endedAt,
    );
  }

// ignore: unused_element
  MemberInfoDataModel fromJson(Map<String, Object> json) {
    return MemberInfoDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MemberInfoDataModel = _$MemberInfoDataModelTearOff();

/// @nodoc
mixin _$MemberInfoDataModel {
  String get id;
  String get user;
  String get memberNumber;
  MembershipDataModel get type;
  @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
  String get startAt;
  @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
  String get endedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MemberInfoDataModelCopyWith<MemberInfoDataModel> get copyWith;
}

/// @nodoc
abstract class $MemberInfoDataModelCopyWith<$Res> {
  factory $MemberInfoDataModelCopyWith(
          MemberInfoDataModel value, $Res Function(MemberInfoDataModel) then) =
      _$MemberInfoDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String user,
      String memberNumber,
      MembershipDataModel type,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String startAt,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String endedAt});

  $MembershipDataModelCopyWith<$Res> get type;
}

/// @nodoc
class _$MemberInfoDataModelCopyWithImpl<$Res>
    implements $MemberInfoDataModelCopyWith<$Res> {
  _$MemberInfoDataModelCopyWithImpl(this._value, this._then);

  final MemberInfoDataModel _value;
  // ignore: unused_field
  final $Res Function(MemberInfoDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object user = freezed,
    Object memberNumber = freezed,
    Object type = freezed,
    Object startAt = freezed,
    Object endedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      user: user == freezed ? _value.user : user as String,
      memberNumber: memberNumber == freezed
          ? _value.memberNumber
          : memberNumber as String,
      type: type == freezed ? _value.type : type as MembershipDataModel,
      startAt: startAt == freezed ? _value.startAt : startAt as String,
      endedAt: endedAt == freezed ? _value.endedAt : endedAt as String,
    ));
  }

  @override
  $MembershipDataModelCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $MembershipDataModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$MemberInfoDataModelCopyWith<$Res>
    implements $MemberInfoDataModelCopyWith<$Res> {
  factory _$MemberInfoDataModelCopyWith(_MemberInfoDataModel value,
          $Res Function(_MemberInfoDataModel) then) =
      __$MemberInfoDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String user,
      String memberNumber,
      MembershipDataModel type,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String startAt,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String endedAt});

  @override
  $MembershipDataModelCopyWith<$Res> get type;
}

/// @nodoc
class __$MemberInfoDataModelCopyWithImpl<$Res>
    extends _$MemberInfoDataModelCopyWithImpl<$Res>
    implements _$MemberInfoDataModelCopyWith<$Res> {
  __$MemberInfoDataModelCopyWithImpl(
      _MemberInfoDataModel _value, $Res Function(_MemberInfoDataModel) _then)
      : super(_value, (v) => _then(v as _MemberInfoDataModel));

  @override
  _MemberInfoDataModel get _value => super._value as _MemberInfoDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object user = freezed,
    Object memberNumber = freezed,
    Object type = freezed,
    Object startAt = freezed,
    Object endedAt = freezed,
  }) {
    return _then(_MemberInfoDataModel(
      id: id == freezed ? _value.id : id as String,
      user: user == freezed ? _value.user : user as String,
      memberNumber: memberNumber == freezed
          ? _value.memberNumber
          : memberNumber as String,
      type: type == freezed ? _value.type : type as MembershipDataModel,
      startAt: startAt == freezed ? _value.startAt : startAt as String,
      endedAt: endedAt == freezed ? _value.endedAt : endedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MemberInfoDataModel implements _MemberInfoDataModel {
  _$_MemberInfoDataModel(
      {this.id,
      this.user,
      this.memberNumber,
      this.type,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          this.startAt,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          this.endedAt});

  factory _$_MemberInfoDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MemberInfoDataModelFromJson(json);

  @override
  final String id;
  @override
  final String user;
  @override
  final String memberNumber;
  @override
  final MembershipDataModel type;
  @override
  @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
  final String startAt;
  @override
  @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
  final String endedAt;

  @override
  String toString() {
    return 'MemberInfoDataModel(id: $id, user: $user, memberNumber: $memberNumber, type: $type, startAt: $startAt, endedAt: $endedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MemberInfoDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.memberNumber, memberNumber) ||
                const DeepCollectionEquality()
                    .equals(other.memberNumber, memberNumber)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.startAt, startAt) ||
                const DeepCollectionEquality()
                    .equals(other.startAt, startAt)) &&
            (identical(other.endedAt, endedAt) ||
                const DeepCollectionEquality().equals(other.endedAt, endedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(memberNumber) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(startAt) ^
      const DeepCollectionEquality().hash(endedAt);

  @JsonKey(ignore: true)
  @override
  _$MemberInfoDataModelCopyWith<_MemberInfoDataModel> get copyWith =>
      __$MemberInfoDataModelCopyWithImpl<_MemberInfoDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MemberInfoDataModelToJson(this);
  }
}

abstract class _MemberInfoDataModel implements MemberInfoDataModel {
  factory _MemberInfoDataModel(
      {String id,
      String user,
      String memberNumber,
      MembershipDataModel type,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String startAt,
      @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
          String endedAt}) = _$_MemberInfoDataModel;

  factory _MemberInfoDataModel.fromJson(Map<String, dynamic> json) =
      _$_MemberInfoDataModel.fromJson;

  @override
  String get id;
  @override
  String get user;
  @override
  String get memberNumber;
  @override
  MembershipDataModel get type;
  @override
  @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
  String get startAt;
  @override
  @JsonKey(nullable: true, defaultValue: "2021-04-09T22:54:19.881Z")
  String get endedAt;
  @override
  @JsonKey(ignore: true)
  _$MemberInfoDataModelCopyWith<_MemberInfoDataModel> get copyWith;
}
