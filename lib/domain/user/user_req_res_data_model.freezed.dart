// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_req_res_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserReqResDataModel _$UserReqResDataModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'userRequestDataModel':
      return UserRequestDataModel.fromJson(json);
    case 'userResponseDataModel':
      return UserResponseDataModel.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$UserReqResDataModelTearOff {
  const _$UserReqResDataModelTearOff();

// ignore: unused_element
  UserRequestDataModel userRequestDataModel(
      {String fullName, String phoneNumber, String imageUrl}) {
    return UserRequestDataModel(
      fullName: fullName,
      phoneNumber: phoneNumber,
      imageUrl: imageUrl,
    );
  }

// ignore: unused_element
  UserResponseDataModel userResponseDataModel(
      {String id, String fullName, String phoneNumber, String imageUrl}) {
    return UserResponseDataModel(
      id: id,
      fullName: fullName,
      phoneNumber: phoneNumber,
      imageUrl: imageUrl,
    );
  }

// ignore: unused_element
  UserReqResDataModel fromJson(Map<String, Object> json) {
    return UserReqResDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserReqResDataModel = _$UserReqResDataModelTearOff();

/// @nodoc
mixin _$UserReqResDataModel {
  String get fullName;
  String get phoneNumber;
  String get imageUrl;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult userRequestDataModel(
            String fullName, String phoneNumber, String imageUrl),
    @required
        TResult userResponseDataModel(
            String id, String fullName, String phoneNumber, String imageUrl),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userRequestDataModel(
        String fullName, String phoneNumber, String imageUrl),
    TResult userResponseDataModel(
        String id, String fullName, String phoneNumber, String imageUrl),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userRequestDataModel(UserRequestDataModel value),
    @required TResult userResponseDataModel(UserResponseDataModel value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userRequestDataModel(UserRequestDataModel value),
    TResult userResponseDataModel(UserResponseDataModel value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserReqResDataModelCopyWith<UserReqResDataModel> get copyWith;
}

/// @nodoc
abstract class $UserReqResDataModelCopyWith<$Res> {
  factory $UserReqResDataModelCopyWith(
          UserReqResDataModel value, $Res Function(UserReqResDataModel) then) =
      _$UserReqResDataModelCopyWithImpl<$Res>;
  $Res call({String fullName, String phoneNumber, String imageUrl});
}

/// @nodoc
class _$UserReqResDataModelCopyWithImpl<$Res>
    implements $UserReqResDataModelCopyWith<$Res> {
  _$UserReqResDataModelCopyWithImpl(this._value, this._then);

  final UserReqResDataModel _value;
  // ignore: unused_field
  final $Res Function(UserReqResDataModel) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object phoneNumber = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
abstract class $UserRequestDataModelCopyWith<$Res>
    implements $UserReqResDataModelCopyWith<$Res> {
  factory $UserRequestDataModelCopyWith(UserRequestDataModel value,
          $Res Function(UserRequestDataModel) then) =
      _$UserRequestDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String fullName, String phoneNumber, String imageUrl});
}

/// @nodoc
class _$UserRequestDataModelCopyWithImpl<$Res>
    extends _$UserReqResDataModelCopyWithImpl<$Res>
    implements $UserRequestDataModelCopyWith<$Res> {
  _$UserRequestDataModelCopyWithImpl(
      UserRequestDataModel _value, $Res Function(UserRequestDataModel) _then)
      : super(_value, (v) => _then(v as UserRequestDataModel));

  @override
  UserRequestDataModel get _value => super._value as UserRequestDataModel;

  @override
  $Res call({
    Object fullName = freezed,
    Object phoneNumber = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(UserRequestDataModel(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$UserRequestDataModel implements UserRequestDataModel {
  _$UserRequestDataModel({this.fullName, this.phoneNumber, this.imageUrl});

  factory _$UserRequestDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$UserRequestDataModelFromJson(json);

  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'UserReqResDataModel.userRequestDataModel(fullName: $fullName, phoneNumber: $phoneNumber, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserRequestDataModel &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  $UserRequestDataModelCopyWith<UserRequestDataModel> get copyWith =>
      _$UserRequestDataModelCopyWithImpl<UserRequestDataModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult userRequestDataModel(
            String fullName, String phoneNumber, String imageUrl),
    @required
        TResult userResponseDataModel(
            String id, String fullName, String phoneNumber, String imageUrl),
  }) {
    assert(userRequestDataModel != null);
    assert(userResponseDataModel != null);
    return userRequestDataModel(fullName, phoneNumber, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userRequestDataModel(
        String fullName, String phoneNumber, String imageUrl),
    TResult userResponseDataModel(
        String id, String fullName, String phoneNumber, String imageUrl),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userRequestDataModel != null) {
      return userRequestDataModel(fullName, phoneNumber, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userRequestDataModel(UserRequestDataModel value),
    @required TResult userResponseDataModel(UserResponseDataModel value),
  }) {
    assert(userRequestDataModel != null);
    assert(userResponseDataModel != null);
    return userRequestDataModel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userRequestDataModel(UserRequestDataModel value),
    TResult userResponseDataModel(UserResponseDataModel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userRequestDataModel != null) {
      return userRequestDataModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserRequestDataModelToJson(this)
      ..['runtimeType'] = 'userRequestDataModel';
  }
}

abstract class UserRequestDataModel implements UserReqResDataModel {
  factory UserRequestDataModel(
      {String fullName,
      String phoneNumber,
      String imageUrl}) = _$UserRequestDataModel;

  factory UserRequestDataModel.fromJson(Map<String, dynamic> json) =
      _$UserRequestDataModel.fromJson;

  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  $UserRequestDataModelCopyWith<UserRequestDataModel> get copyWith;
}

/// @nodoc
abstract class $UserResponseDataModelCopyWith<$Res>
    implements $UserReqResDataModelCopyWith<$Res> {
  factory $UserResponseDataModelCopyWith(UserResponseDataModel value,
          $Res Function(UserResponseDataModel) then) =
      _$UserResponseDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String fullName, String phoneNumber, String imageUrl});
}

/// @nodoc
class _$UserResponseDataModelCopyWithImpl<$Res>
    extends _$UserReqResDataModelCopyWithImpl<$Res>
    implements $UserResponseDataModelCopyWith<$Res> {
  _$UserResponseDataModelCopyWithImpl(
      UserResponseDataModel _value, $Res Function(UserResponseDataModel) _then)
      : super(_value, (v) => _then(v as UserResponseDataModel));

  @override
  UserResponseDataModel get _value => super._value as UserResponseDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object fullName = freezed,
    Object phoneNumber = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(UserResponseDataModel(
      id: id == freezed ? _value.id : id as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$UserResponseDataModel implements UserResponseDataModel {
  _$UserResponseDataModel(
      {this.id, this.fullName, this.phoneNumber, this.imageUrl});

  factory _$UserResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$UserResponseDataModelFromJson(json);

  @override
  final String id;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'UserReqResDataModel.userResponseDataModel(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResponseDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  $UserResponseDataModelCopyWith<UserResponseDataModel> get copyWith =>
      _$UserResponseDataModelCopyWithImpl<UserResponseDataModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult userRequestDataModel(
            String fullName, String phoneNumber, String imageUrl),
    @required
        TResult userResponseDataModel(
            String id, String fullName, String phoneNumber, String imageUrl),
  }) {
    assert(userRequestDataModel != null);
    assert(userResponseDataModel != null);
    return userResponseDataModel(id, fullName, phoneNumber, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userRequestDataModel(
        String fullName, String phoneNumber, String imageUrl),
    TResult userResponseDataModel(
        String id, String fullName, String phoneNumber, String imageUrl),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userResponseDataModel != null) {
      return userResponseDataModel(id, fullName, phoneNumber, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userRequestDataModel(UserRequestDataModel value),
    @required TResult userResponseDataModel(UserResponseDataModel value),
  }) {
    assert(userRequestDataModel != null);
    assert(userResponseDataModel != null);
    return userResponseDataModel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userRequestDataModel(UserRequestDataModel value),
    TResult userResponseDataModel(UserResponseDataModel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userResponseDataModel != null) {
      return userResponseDataModel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserResponseDataModelToJson(this)
      ..['runtimeType'] = 'userResponseDataModel';
  }
}

abstract class UserResponseDataModel implements UserReqResDataModel {
  factory UserResponseDataModel(
      {String id,
      String fullName,
      String phoneNumber,
      String imageUrl}) = _$UserResponseDataModel;

  factory UserResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$UserResponseDataModel.fromJson;

  String get id;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  $UserResponseDataModelCopyWith<UserResponseDataModel> get copyWith;
}
