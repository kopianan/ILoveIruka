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
      {String email, String fullName, RoleDataModel role, String token}) {
    return _UserDataModel(
      email: email,
      fullName: fullName,
      role: role,
      token: token,
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
  String get fullName;
  RoleDataModel get role;
  String get token;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res>;
  $Res call({String email, String fullName, RoleDataModel role, String token});

  $RoleDataModelCopyWith<$Res> get role;
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
    Object fullName = freezed,
    Object role = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      role: role == freezed ? _value.role : role as RoleDataModel,
      token: token == freezed ? _value.token : token as String,
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
}

/// @nodoc
abstract class _$UserDataModelCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$UserDataModelCopyWith(
          _UserDataModel value, $Res Function(_UserDataModel) then) =
      __$UserDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String fullName, RoleDataModel role, String token});

  @override
  $RoleDataModelCopyWith<$Res> get role;
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
    Object fullName = freezed,
    Object role = freezed,
    Object token = freezed,
  }) {
    return _then(_UserDataModel(
      email: email == freezed ? _value.email : email as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      role: role == freezed ? _value.role : role as RoleDataModel,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDataModel implements _UserDataModel {
  const _$_UserDataModel({this.email, this.fullName, this.role, this.token});

  factory _$_UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataModelFromJson(json);

  @override
  final String email;
  @override
  final String fullName;
  @override
  final RoleDataModel role;
  @override
  final String token;

  @override
  String toString() {
    return 'UserDataModel(email: $email, fullName: $fullName, role: $role, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDataModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(token);

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
      String fullName,
      RoleDataModel role,
      String token}) = _$_UserDataModel;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$_UserDataModel.fromJson;

  @override
  String get email;
  @override
  String get fullName;
  @override
  RoleDataModel get role;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$UserDataModelCopyWith<_UserDataModel> get copyWith;
}
