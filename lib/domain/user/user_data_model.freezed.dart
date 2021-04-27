// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
class _$UserDataModelTearOff {
  const _$UserDataModelTearOff();

// ignore: unused_element
  _UserDataModel call(
      {String email,
      String id,
      String fullName,
      RoleDataModel role,
      @JsonKey(defaultValue: '') String imageUrl,
      String phoneNumber,
      @JsonKey(nullable: true) MemberInfoDataModel membership,
      String token,
      @JsonKey(defaultValue: 0) int points}) {
    return _UserDataModel(
      email: email,
      id: id,
      fullName: fullName,
      role: role,
      imageUrl: imageUrl,
      phoneNumber: phoneNumber,
      membership: membership,
      token: token,
      points: points,
    );
  }

// ignore: unused_element
  UserDataModel fromJson(Map<String, Object> json) {
    return UserDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDataModel = _$UserDataModelTearOff();

/// @nodoc
mixin _$UserDataModel {
  String get email;
  String get id;
  String get fullName;
  RoleDataModel get role;
  @JsonKey(defaultValue: '')
  String get imageUrl;
  String get phoneNumber;
  @JsonKey(nullable: true)
  MemberInfoDataModel get membership;
  String get token;
  @JsonKey(defaultValue: 0)
  int get points;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String id,
      String fullName,
      RoleDataModel role,
      @JsonKey(defaultValue: '') String imageUrl,
      String phoneNumber,
      @JsonKey(nullable: true) MemberInfoDataModel membership,
      String token,
      @JsonKey(defaultValue: 0) int points});

  $RoleDataModelCopyWith<$Res> get role;
  $MemberInfoDataModelCopyWith<$Res> get membership;
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  final UserDataModel _value;
  // ignore: unused_field
  final $Res Function(UserDataModel) _then;

  @override
  $Res call({
    Object email = freezed,
    Object id = freezed,
    Object fullName = freezed,
    Object role = freezed,
    Object imageUrl = freezed,
    Object phoneNumber = freezed,
    Object membership = freezed,
    Object token = freezed,
    Object points = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      id: id == freezed ? _value.id : id as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      role: role == freezed ? _value.role : role as RoleDataModel,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      membership: membership == freezed
          ? _value.membership
          : membership as MemberInfoDataModel,
      token: token == freezed ? _value.token : token as String,
      points: points == freezed ? _value.points : points as int,
    ));
  }

  @override
  $RoleDataModelCopyWith<$Res> get role {
    if (_value.role == null) {
      return null;
    }
    return $RoleDataModelCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value));
    });
  }

  @override
  $MemberInfoDataModelCopyWith<$Res> get membership {
    if (_value.membership == null) {
      return null;
    }
    return $MemberInfoDataModelCopyWith<$Res>(_value.membership, (value) {
      return _then(_value.copyWith(membership: value));
    });
  }
}

/// @nodoc
abstract class _$UserDataModelCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$UserDataModelCopyWith(
          _UserDataModel value, $Res Function(_UserDataModel) then) =
      __$UserDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String id,
      String fullName,
      RoleDataModel role,
      @JsonKey(defaultValue: '') String imageUrl,
      String phoneNumber,
      @JsonKey(nullable: true) MemberInfoDataModel membership,
      String token,
      @JsonKey(defaultValue: 0) int points});

  @override
  $RoleDataModelCopyWith<$Res> get role;
  @override
  $MemberInfoDataModelCopyWith<$Res> get membership;
}

/// @nodoc
class __$UserDataModelCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res>
    implements _$UserDataModelCopyWith<$Res> {
  __$UserDataModelCopyWithImpl(
      _UserDataModel _value, $Res Function(_UserDataModel) _then)
      : super(_value, (v) => _then(v as _UserDataModel));

  @override
  _UserDataModel get _value => super._value as _UserDataModel;

  @override
  $Res call({
    Object email = freezed,
    Object id = freezed,
    Object fullName = freezed,
    Object role = freezed,
    Object imageUrl = freezed,
    Object phoneNumber = freezed,
    Object membership = freezed,
    Object token = freezed,
    Object points = freezed,
  }) {
    return _then(_UserDataModel(
      email: email == freezed ? _value.email : email as String,
      id: id == freezed ? _value.id : id as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      role: role == freezed ? _value.role : role as RoleDataModel,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      membership: membership == freezed
          ? _value.membership
          : membership as MemberInfoDataModel,
      token: token == freezed ? _value.token : token as String,
      points: points == freezed ? _value.points : points as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDataModel implements _UserDataModel {
  const _$_UserDataModel(
      {this.email,
      this.id,
      this.fullName,
      this.role,
      @JsonKey(defaultValue: '') this.imageUrl,
      this.phoneNumber,
      @JsonKey(nullable: true) this.membership,
      this.token,
      @JsonKey(defaultValue: 0) this.points});

  factory _$_UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataModelFromJson(json);

  @override
  final String email;
  @override
  final String id;
  @override
  final String fullName;
  @override
  final RoleDataModel role;
  @override
  @JsonKey(defaultValue: '')
  final String imageUrl;
  @override
  final String phoneNumber;
  @override
  @JsonKey(nullable: true)
  final MemberInfoDataModel membership;
  @override
  final String token;
  @override
  @JsonKey(defaultValue: 0)
  final int points;

  @override
  String toString() {
    return 'UserDataModel(email: $email, id: $id, fullName: $fullName, role: $role, imageUrl: $imageUrl, phoneNumber: $phoneNumber, membership: $membership, token: $token, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDataModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.membership, membership) ||
                const DeepCollectionEquality()
                    .equals(other.membership, membership)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(membership) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$UserDataModelCopyWith<_UserDataModel> get copyWith =>
      __$UserDataModelCopyWithImpl<_UserDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataModelToJson(this);
  }
}

abstract class _UserDataModel implements UserDataModel {
  const factory _UserDataModel(
      {String email,
      String id,
      String fullName,
      RoleDataModel role,
      @JsonKey(defaultValue: '') String imageUrl,
      String phoneNumber,
      @JsonKey(nullable: true) MemberInfoDataModel membership,
      String token,
      @JsonKey(defaultValue: 0) int points}) = _$_UserDataModel;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$_UserDataModel.fromJson;

  @override
  String get email;
  @override
  String get id;
  @override
  String get fullName;
  @override
  RoleDataModel get role;
  @override
  @JsonKey(defaultValue: '')
  String get imageUrl;
  @override
  String get phoneNumber;
  @override
  @JsonKey(nullable: true)
  MemberInfoDataModel get membership;
  @override
  String get token;
  @override
  @JsonKey(defaultValue: 0)
  int get points;
  @override
  @JsonKey(ignore: true)
  _$UserDataModelCopyWith<_UserDataModel> get copyWith;
}
