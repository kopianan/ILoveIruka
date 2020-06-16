// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'loginRequestData':
      return LoginRequestData.fromJson(json);
    case 'loginResponseData':
      return LoginResponseData.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$LoginDataTearOff {
  const _$LoginDataTearOff();

  LoginRequestData loginRequestData(
      {@required String username, @required String password}) {
    return LoginRequestData(
      username: username,
      password: password,
    );
  }

  LoginResponseData loginResponseData(
      {@required @JsonKey(name: 'User') User user}) {
    return LoginResponseData(
      user: user,
    );
  }
}

// ignore: unused_element
const $LoginData = _$LoginDataTearOff();

mixin _$LoginData {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequestData(String username, String password),
    @required Result loginResponseData(@JsonKey(name: 'User') User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequestData(String username, String password),
    Result loginResponseData(@JsonKey(name: 'User') User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequestData(LoginRequestData value),
    @required Result loginResponseData(LoginResponseData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequestData(LoginRequestData value),
    Result loginResponseData(LoginResponseData value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res>;
}

class _$LoginDataCopyWithImpl<$Res> implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  final LoginData _value;
  // ignore: unused_field
  final $Res Function(LoginData) _then;
}

abstract class $LoginRequestDataCopyWith<$Res> {
  factory $LoginRequestDataCopyWith(
          LoginRequestData value, $Res Function(LoginRequestData) then) =
      _$LoginRequestDataCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

class _$LoginRequestDataCopyWithImpl<$Res> extends _$LoginDataCopyWithImpl<$Res>
    implements $LoginRequestDataCopyWith<$Res> {
  _$LoginRequestDataCopyWithImpl(
      LoginRequestData _value, $Res Function(LoginRequestData) _then)
      : super(_value, (v) => _then(v as LoginRequestData));

  @override
  LoginRequestData get _value => super._value as LoginRequestData;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(LoginRequestData(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()
class _$LoginRequestData implements LoginRequestData {
  _$LoginRequestData({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  factory _$LoginRequestData.fromJson(Map<String, dynamic> json) =>
      _$_$LoginRequestDataFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginData.loginRequestData(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginRequestData &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @override
  $LoginRequestDataCopyWith<LoginRequestData> get copyWith =>
      _$LoginRequestDataCopyWithImpl<LoginRequestData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequestData(String username, String password),
    @required Result loginResponseData(@JsonKey(name: 'User') User user),
  }) {
    assert(loginRequestData != null);
    assert(loginResponseData != null);
    return loginRequestData(username, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequestData(String username, String password),
    Result loginResponseData(@JsonKey(name: 'User') User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginRequestData != null) {
      return loginRequestData(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequestData(LoginRequestData value),
    @required Result loginResponseData(LoginResponseData value),
  }) {
    assert(loginRequestData != null);
    assert(loginResponseData != null);
    return loginRequestData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequestData(LoginRequestData value),
    Result loginResponseData(LoginResponseData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginRequestData != null) {
      return loginRequestData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LoginRequestDataToJson(this)
      ..['runtimeType'] = 'loginRequestData';
  }
}

abstract class LoginRequestData implements LoginData {
  factory LoginRequestData(
      {@required String username,
      @required String password}) = _$LoginRequestData;

  factory LoginRequestData.fromJson(Map<String, dynamic> json) =
      _$LoginRequestData.fromJson;

  String get username;
  String get password;
  $LoginRequestDataCopyWith<LoginRequestData> get copyWith;
}

abstract class $LoginResponseDataCopyWith<$Res> {
  factory $LoginResponseDataCopyWith(
          LoginResponseData value, $Res Function(LoginResponseData) then) =
      _$LoginResponseDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'User') User user});

  $UserCopyWith<$Res> get user;
}

class _$LoginResponseDataCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(
      LoginResponseData _value, $Res Function(LoginResponseData) _then)
      : super(_value, (v) => _then(v as LoginResponseData));

  @override
  LoginResponseData get _value => super._value as LoginResponseData;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoginResponseData(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

@JsonSerializable()
class _$LoginResponseData implements LoginResponseData {
  _$LoginResponseData({@required @JsonKey(name: 'User') this.user})
      : assert(user != null);

  factory _$LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$LoginResponseDataFromJson(json);

  @override
  @JsonKey(name: 'User')
  final User user;

  @override
  String toString() {
    return 'LoginData.loginResponseData(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginResponseData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoginResponseDataCopyWith<LoginResponseData> get copyWith =>
      _$LoginResponseDataCopyWithImpl<LoginResponseData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loginRequestData(String username, String password),
    @required Result loginResponseData(@JsonKey(name: 'User') User user),
  }) {
    assert(loginRequestData != null);
    assert(loginResponseData != null);
    return loginResponseData(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loginRequestData(String username, String password),
    Result loginResponseData(@JsonKey(name: 'User') User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginResponseData != null) {
      return loginResponseData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loginRequestData(LoginRequestData value),
    @required Result loginResponseData(LoginResponseData value),
  }) {
    assert(loginRequestData != null);
    assert(loginResponseData != null);
    return loginResponseData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loginRequestData(LoginRequestData value),
    Result loginResponseData(LoginResponseData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginResponseData != null) {
      return loginResponseData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LoginResponseDataToJson(this)
      ..['runtimeType'] = 'loginResponseData';
  }
}

abstract class LoginResponseData implements LoginData {
  factory LoginResponseData({@required @JsonKey(name: 'User') User user}) =
      _$LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =
      _$LoginResponseData.fromJson;

  @JsonKey(name: 'User')
  User get user;
  $LoginResponseDataCopyWith<LoginResponseData> get copyWith;
}
