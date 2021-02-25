// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) {
  return _SignUpRequest.fromJson(json);
}

/// @nodoc
class _$SignUpRequestTearOff {
  const _$SignUpRequestTearOff();

// ignore: unused_element
  _SignUpRequest call(
      {@JsonKey(name: "fullName") String fullName,
      @JsonKey(name: "role") String roleId,
      @JsonKey(name: "phoneNumber") String phoneNumber,
      @JsonKey(name: "imageUrl") String image,
      @JsonKey(name: "username") String userName,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "passwordConfirmation") String passwordConfirmation}) {
    return _SignUpRequest(
      fullName: fullName,
      roleId: roleId,
      phoneNumber: phoneNumber,
      image: image,
      userName: userName,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
    );
  }

// ignore: unused_element
  SignUpRequest fromJson(Map<String, Object> json) {
    return SignUpRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpRequest = _$SignUpRequestTearOff();

/// @nodoc
mixin _$SignUpRequest {
  @JsonKey(name: "fullName")
  String get fullName;
  @JsonKey(name: "role")
  String get roleId;
  @JsonKey(name: "phoneNumber")
  String get phoneNumber;
  @JsonKey(name: "imageUrl")
  String get image;
  @JsonKey(name: "username")
  String get userName;
  @JsonKey(name: "email")
  String get email;
  @JsonKey(name: "password")
  String get password;
  @JsonKey(name: "passwordConfirmation")
  String get passwordConfirmation;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SignUpRequestCopyWith<SignUpRequest> get copyWith;
}

/// @nodoc
abstract class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) then) =
      _$SignUpRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "fullName") String fullName,
      @JsonKey(name: "role") String roleId,
      @JsonKey(name: "phoneNumber") String phoneNumber,
      @JsonKey(name: "imageUrl") String image,
      @JsonKey(name: "username") String userName,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "passwordConfirmation") String passwordConfirmation});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._value, this._then);

  final SignUpRequest _value;
  // ignore: unused_field
  final $Res Function(SignUpRequest) _then;

  @override
  $Res call({
    Object fullName = freezed,
    Object roleId = freezed,
    Object phoneNumber = freezed,
    Object image = freezed,
    Object userName = freezed,
    Object email = freezed,
    Object password = freezed,
    Object passwordConfirmation = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      roleId: roleId == freezed ? _value.roleId : roleId as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      image: image == freezed ? _value.image : image as String,
      userName: userName == freezed ? _value.userName : userName as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation as String,
    ));
  }
}

/// @nodoc
abstract class _$SignUpRequestCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$SignUpRequestCopyWith(
          _SignUpRequest value, $Res Function(_SignUpRequest) then) =
      __$SignUpRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "fullName") String fullName,
      @JsonKey(name: "role") String roleId,
      @JsonKey(name: "phoneNumber") String phoneNumber,
      @JsonKey(name: "imageUrl") String image,
      @JsonKey(name: "username") String userName,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "passwordConfirmation") String passwordConfirmation});
}

/// @nodoc
class __$SignUpRequestCopyWithImpl<$Res>
    extends _$SignUpRequestCopyWithImpl<$Res>
    implements _$SignUpRequestCopyWith<$Res> {
  __$SignUpRequestCopyWithImpl(
      _SignUpRequest _value, $Res Function(_SignUpRequest) _then)
      : super(_value, (v) => _then(v as _SignUpRequest));

  @override
  _SignUpRequest get _value => super._value as _SignUpRequest;

  @override
  $Res call({
    Object fullName = freezed,
    Object roleId = freezed,
    Object phoneNumber = freezed,
    Object image = freezed,
    Object userName = freezed,
    Object email = freezed,
    Object password = freezed,
    Object passwordConfirmation = freezed,
  }) {
    return _then(_SignUpRequest(
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      roleId: roleId == freezed ? _value.roleId : roleId as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      image: image == freezed ? _value.image : image as String,
      userName: userName == freezed ? _value.userName : userName as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SignUpRequest implements _SignUpRequest {
  _$_SignUpRequest(
      {@JsonKey(name: "fullName") this.fullName,
      @JsonKey(name: "role") this.roleId,
      @JsonKey(name: "phoneNumber") this.phoneNumber,
      @JsonKey(name: "imageUrl") this.image,
      @JsonKey(name: "username") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "passwordConfirmation") this.passwordConfirmation});

  factory _$_SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpRequestFromJson(json);

  @override
  @JsonKey(name: "fullName")
  final String fullName;
  @override
  @JsonKey(name: "role")
  final String roleId;
  @override
  @JsonKey(name: "phoneNumber")
  final String phoneNumber;
  @override
  @JsonKey(name: "imageUrl")
  final String image;
  @override
  @JsonKey(name: "username")
  final String userName;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "password")
  final String password;
  @override
  @JsonKey(name: "passwordConfirmation")
  final String passwordConfirmation;

  @override
  String toString() {
    return 'SignUpRequest(fullName: $fullName, roleId: $roleId, phoneNumber: $phoneNumber, image: $image, userName: $userName, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpRequest &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirmation, passwordConfirmation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordConfirmation);

  @JsonKey(ignore: true)
  @override
  _$SignUpRequestCopyWith<_SignUpRequest> get copyWith =>
      __$SignUpRequestCopyWithImpl<_SignUpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpRequestToJson(this);
  }
}

abstract class _SignUpRequest implements SignUpRequest {
  factory _SignUpRequest(
          {@JsonKey(name: "fullName") String fullName,
          @JsonKey(name: "role") String roleId,
          @JsonKey(name: "phoneNumber") String phoneNumber,
          @JsonKey(name: "imageUrl") String image,
          @JsonKey(name: "username") String userName,
          @JsonKey(name: "email") String email,
          @JsonKey(name: "password") String password,
          @JsonKey(name: "passwordConfirmation") String passwordConfirmation}) =
      _$_SignUpRequest;

  factory _SignUpRequest.fromJson(Map<String, dynamic> json) =
      _$_SignUpRequest.fromJson;

  @override
  @JsonKey(name: "fullName")
  String get fullName;
  @override
  @JsonKey(name: "role")
  String get roleId;
  @override
  @JsonKey(name: "phoneNumber")
  String get phoneNumber;
  @override
  @JsonKey(name: "imageUrl")
  String get image;
  @override
  @JsonKey(name: "username")
  String get userName;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(name: "passwordConfirmation")
  String get passwordConfirmation;
  @override
  @JsonKey(ignore: true)
  _$SignUpRequestCopyWith<_SignUpRequest> get copyWith;
}
