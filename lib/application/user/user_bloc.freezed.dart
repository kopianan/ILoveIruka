// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _ChangeProfilePhoto changeProfilePhoto(String file, String id) {
    return _ChangeProfilePhoto(
      file,
      id,
    );
  }

// ignore: unused_element
  _UpdateProfileData updateProfileData(UserRequestDataModel requestDataModel) {
    return _UpdateProfileData(
      requestDataModel,
    );
  }

// ignore: unused_element
  _ChangePassword changePassword(PasswordDataModel password) {
    return _ChangePassword(
      password,
    );
  }

// ignore: unused_element
  _ChangeAddress changeAddress(AddressRequest addressRequest) {
    return _ChangeAddress(
      addressRequest,
    );
  }

// ignore: unused_element
  _GetAddress getAddress() {
    return const _GetAddress();
  }

// ignore: unused_element
  _ForgotPassword forgotPassword(String email) {
    return _ForgotPassword(
      email,
    );
  }

// ignore: unused_element
  _GetSingleUser getSingleUser(String userId) {
    return _GetSingleUser(
      userId,
    );
  }

// ignore: unused_element
  _RefreshUserData refreshUserData(String userId) {
    return _RefreshUserData(
      userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UserEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ChangeProfilePhotoCopyWith<$Res> {
  factory _$ChangeProfilePhotoCopyWith(
          _ChangeProfilePhoto value, $Res Function(_ChangeProfilePhoto) then) =
      __$ChangeProfilePhotoCopyWithImpl<$Res>;
  $Res call({String file, String id});
}

/// @nodoc
class __$ChangeProfilePhotoCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$ChangeProfilePhotoCopyWith<$Res> {
  __$ChangeProfilePhotoCopyWithImpl(
      _ChangeProfilePhoto _value, $Res Function(_ChangeProfilePhoto) _then)
      : super(_value, (v) => _then(v as _ChangeProfilePhoto));

  @override
  _ChangeProfilePhoto get _value => super._value as _ChangeProfilePhoto;

  @override
  $Res call({
    Object file = freezed,
    Object id = freezed,
  }) {
    return _then(_ChangeProfilePhoto(
      file == freezed ? _value.file : file as String,
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_ChangeProfilePhoto implements _ChangeProfilePhoto {
  const _$_ChangeProfilePhoto(this.file, this.id)
      : assert(file != null),
        assert(id != null);

  @override
  final String file;
  @override
  final String id;

  @override
  String toString() {
    return 'UserEvent.changeProfilePhoto(file: $file, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeProfilePhoto &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ChangeProfilePhotoCopyWith<_ChangeProfilePhoto> get copyWith =>
      __$ChangeProfilePhotoCopyWithImpl<_ChangeProfilePhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return changeProfilePhoto(file, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeProfilePhoto != null) {
      return changeProfilePhoto(file, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return changeProfilePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeProfilePhoto != null) {
      return changeProfilePhoto(this);
    }
    return orElse();
  }
}

abstract class _ChangeProfilePhoto implements UserEvent {
  const factory _ChangeProfilePhoto(String file, String id) =
      _$_ChangeProfilePhoto;

  String get file;
  String get id;
  @JsonKey(ignore: true)
  _$ChangeProfilePhotoCopyWith<_ChangeProfilePhoto> get copyWith;
}

/// @nodoc
abstract class _$UpdateProfileDataCopyWith<$Res> {
  factory _$UpdateProfileDataCopyWith(
          _UpdateProfileData value, $Res Function(_UpdateProfileData) then) =
      __$UpdateProfileDataCopyWithImpl<$Res>;
  $Res call({UserRequestDataModel requestDataModel});
}

/// @nodoc
class __$UpdateProfileDataCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$UpdateProfileDataCopyWith<$Res> {
  __$UpdateProfileDataCopyWithImpl(
      _UpdateProfileData _value, $Res Function(_UpdateProfileData) _then)
      : super(_value, (v) => _then(v as _UpdateProfileData));

  @override
  _UpdateProfileData get _value => super._value as _UpdateProfileData;

  @override
  $Res call({
    Object requestDataModel = freezed,
  }) {
    return _then(_UpdateProfileData(
      requestDataModel == freezed
          ? _value.requestDataModel
          : requestDataModel as UserRequestDataModel,
    ));
  }
}

/// @nodoc
class _$_UpdateProfileData implements _UpdateProfileData {
  const _$_UpdateProfileData(this.requestDataModel)
      : assert(requestDataModel != null);

  @override
  final UserRequestDataModel requestDataModel;

  @override
  String toString() {
    return 'UserEvent.updateProfileData(requestDataModel: $requestDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProfileData &&
            (identical(other.requestDataModel, requestDataModel) ||
                const DeepCollectionEquality()
                    .equals(other.requestDataModel, requestDataModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestDataModel);

  @JsonKey(ignore: true)
  @override
  _$UpdateProfileDataCopyWith<_UpdateProfileData> get copyWith =>
      __$UpdateProfileDataCopyWithImpl<_UpdateProfileData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return updateProfileData(requestDataModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateProfileData != null) {
      return updateProfileData(requestDataModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return updateProfileData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateProfileData != null) {
      return updateProfileData(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileData implements UserEvent {
  const factory _UpdateProfileData(UserRequestDataModel requestDataModel) =
      _$_UpdateProfileData;

  UserRequestDataModel get requestDataModel;
  @JsonKey(ignore: true)
  _$UpdateProfileDataCopyWith<_UpdateProfileData> get copyWith;
}

/// @nodoc
abstract class _$ChangePasswordCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  $Res call({PasswordDataModel password});
}

/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_ChangePassword(
      password == freezed ? _value.password : password as PasswordDataModel,
    ));
  }
}

/// @nodoc
class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.password) : assert(password != null);

  @override
  final PasswordDataModel password;

  @override
  String toString() {
    return 'UserEvent.changePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return changePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements UserEvent {
  const factory _ChangePassword(PasswordDataModel password) = _$_ChangePassword;

  PasswordDataModel get password;
  @JsonKey(ignore: true)
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith;
}

/// @nodoc
abstract class _$ChangeAddressCopyWith<$Res> {
  factory _$ChangeAddressCopyWith(
          _ChangeAddress value, $Res Function(_ChangeAddress) then) =
      __$ChangeAddressCopyWithImpl<$Res>;
  $Res call({AddressRequest addressRequest});
}

/// @nodoc
class __$ChangeAddressCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$ChangeAddressCopyWith<$Res> {
  __$ChangeAddressCopyWithImpl(
      _ChangeAddress _value, $Res Function(_ChangeAddress) _then)
      : super(_value, (v) => _then(v as _ChangeAddress));

  @override
  _ChangeAddress get _value => super._value as _ChangeAddress;

  @override
  $Res call({
    Object addressRequest = freezed,
  }) {
    return _then(_ChangeAddress(
      addressRequest == freezed
          ? _value.addressRequest
          : addressRequest as AddressRequest,
    ));
  }
}

/// @nodoc
class _$_ChangeAddress implements _ChangeAddress {
  const _$_ChangeAddress(this.addressRequest) : assert(addressRequest != null);

  @override
  final AddressRequest addressRequest;

  @override
  String toString() {
    return 'UserEvent.changeAddress(addressRequest: $addressRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAddress &&
            (identical(other.addressRequest, addressRequest) ||
                const DeepCollectionEquality()
                    .equals(other.addressRequest, addressRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addressRequest);

  @JsonKey(ignore: true)
  @override
  _$ChangeAddressCopyWith<_ChangeAddress> get copyWith =>
      __$ChangeAddressCopyWithImpl<_ChangeAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return changeAddress(addressRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeAddress != null) {
      return changeAddress(addressRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return changeAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeAddress != null) {
      return changeAddress(this);
    }
    return orElse();
  }
}

abstract class _ChangeAddress implements UserEvent {
  const factory _ChangeAddress(AddressRequest addressRequest) =
      _$_ChangeAddress;

  AddressRequest get addressRequest;
  @JsonKey(ignore: true)
  _$ChangeAddressCopyWith<_ChangeAddress> get copyWith;
}

/// @nodoc
abstract class _$GetAddressCopyWith<$Res> {
  factory _$GetAddressCopyWith(
          _GetAddress value, $Res Function(_GetAddress) then) =
      __$GetAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAddressCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$GetAddressCopyWith<$Res> {
  __$GetAddressCopyWithImpl(
      _GetAddress _value, $Res Function(_GetAddress) _then)
      : super(_value, (v) => _then(v as _GetAddress));

  @override
  _GetAddress get _value => super._value as _GetAddress;
}

/// @nodoc
class _$_GetAddress implements _GetAddress {
  const _$_GetAddress();

  @override
  String toString() {
    return 'UserEvent.getAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return getAddress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAddress != null) {
      return getAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class _GetAddress implements UserEvent {
  const factory _GetAddress() = _$_GetAddress;
}

/// @nodoc
abstract class _$ForgotPasswordCopyWith<$Res> {
  factory _$ForgotPasswordCopyWith(
          _ForgotPassword value, $Res Function(_ForgotPassword) then) =
      __$ForgotPasswordCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$ForgotPasswordCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$ForgotPasswordCopyWith<$Res> {
  __$ForgotPasswordCopyWithImpl(
      _ForgotPassword _value, $Res Function(_ForgotPassword) _then)
      : super(_value, (v) => _then(v as _ForgotPassword));

  @override
  _ForgotPassword get _value => super._value as _ForgotPassword;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_ForgotPassword(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_ForgotPassword implements _ForgotPassword {
  const _$_ForgotPassword(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'UserEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgotPassword &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordCopyWith<_ForgotPassword> get copyWith =>
      __$ForgotPasswordCopyWithImpl<_ForgotPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements UserEvent {
  const factory _ForgotPassword(String email) = _$_ForgotPassword;

  String get email;
  @JsonKey(ignore: true)
  _$ForgotPasswordCopyWith<_ForgotPassword> get copyWith;
}

/// @nodoc
abstract class _$GetSingleUserCopyWith<$Res> {
  factory _$GetSingleUserCopyWith(
          _GetSingleUser value, $Res Function(_GetSingleUser) then) =
      __$GetSingleUserCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$GetSingleUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$GetSingleUserCopyWith<$Res> {
  __$GetSingleUserCopyWithImpl(
      _GetSingleUser _value, $Res Function(_GetSingleUser) _then)
      : super(_value, (v) => _then(v as _GetSingleUser));

  @override
  _GetSingleUser get _value => super._value as _GetSingleUser;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_GetSingleUser(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_GetSingleUser implements _GetSingleUser {
  const _$_GetSingleUser(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserEvent.getSingleUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSingleUser &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$GetSingleUserCopyWith<_GetSingleUser> get copyWith =>
      __$GetSingleUserCopyWithImpl<_GetSingleUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return getSingleUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSingleUser != null) {
      return getSingleUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return getSingleUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getSingleUser != null) {
      return getSingleUser(this);
    }
    return orElse();
  }
}

abstract class _GetSingleUser implements UserEvent {
  const factory _GetSingleUser(String userId) = _$_GetSingleUser;

  String get userId;
  @JsonKey(ignore: true)
  _$GetSingleUserCopyWith<_GetSingleUser> get copyWith;
}

/// @nodoc
abstract class _$RefreshUserDataCopyWith<$Res> {
  factory _$RefreshUserDataCopyWith(
          _RefreshUserData value, $Res Function(_RefreshUserData) then) =
      __$RefreshUserDataCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$RefreshUserDataCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$RefreshUserDataCopyWith<$Res> {
  __$RefreshUserDataCopyWithImpl(
      _RefreshUserData _value, $Res Function(_RefreshUserData) _then)
      : super(_value, (v) => _then(v as _RefreshUserData));

  @override
  _RefreshUserData get _value => super._value as _RefreshUserData;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_RefreshUserData(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_RefreshUserData implements _RefreshUserData {
  const _$_RefreshUserData(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserEvent.refreshUserData(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RefreshUserData &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$RefreshUserDataCopyWith<_RefreshUserData> get copyWith =>
      __$RefreshUserDataCopyWithImpl<_RefreshUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult changeProfilePhoto(String file, String id),
    @required TResult updateProfileData(UserRequestDataModel requestDataModel),
    @required TResult changePassword(PasswordDataModel password),
    @required TResult changeAddress(AddressRequest addressRequest),
    @required TResult getAddress(),
    @required TResult forgotPassword(String email),
    @required TResult getSingleUser(String userId),
    @required TResult refreshUserData(String userId),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return refreshUserData(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult changeProfilePhoto(String file, String id),
    TResult updateProfileData(UserRequestDataModel requestDataModel),
    TResult changePassword(PasswordDataModel password),
    TResult changeAddress(AddressRequest addressRequest),
    TResult getAddress(),
    TResult forgotPassword(String email),
    TResult getSingleUser(String userId),
    TResult refreshUserData(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshUserData != null) {
      return refreshUserData(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changeProfilePhoto(_ChangeProfilePhoto value),
    @required TResult updateProfileData(_UpdateProfileData value),
    @required TResult changePassword(_ChangePassword value),
    @required TResult changeAddress(_ChangeAddress value),
    @required TResult getAddress(_GetAddress value),
    @required TResult forgotPassword(_ForgotPassword value),
    @required TResult getSingleUser(_GetSingleUser value),
    @required TResult refreshUserData(_RefreshUserData value),
  }) {
    assert(started != null);
    assert(changeProfilePhoto != null);
    assert(updateProfileData != null);
    assert(changePassword != null);
    assert(changeAddress != null);
    assert(getAddress != null);
    assert(forgotPassword != null);
    assert(getSingleUser != null);
    assert(refreshUserData != null);
    return refreshUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changeProfilePhoto(_ChangeProfilePhoto value),
    TResult updateProfileData(_UpdateProfileData value),
    TResult changePassword(_ChangePassword value),
    TResult changeAddress(_ChangeAddress value),
    TResult getAddress(_GetAddress value),
    TResult forgotPassword(_ForgotPassword value),
    TResult getSingleUser(_GetSingleUser value),
    TResult refreshUserData(_RefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshUserData != null) {
      return refreshUserData(this);
    }
    return orElse();
  }
}

abstract class _RefreshUserData implements UserEvent {
  const factory _RefreshUserData(String userId) = _$_RefreshUserData;

  String get userId;
  @JsonKey(ignore: true)
  _$RefreshUserDataCopyWith<_RefreshUserData> get copyWith;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Error error(GeneralFailure failure) {
    return _Error(
      failure,
    );
  }

// ignore: unused_element
  _OnChangePassword onChangePassword(String success) {
    return _OnChangePassword(
      success,
    );
  }

// ignore: unused_element
  _UploadProfilePhoto uploadProfilePhoto(
      Option<Either<GeneralFailure, String>> response, bool isLoading) {
    return _UploadProfilePhoto(
      response,
      isLoading,
    );
  }

// ignore: unused_element
  _OnProfileDataUpdated onProfileDataUpdated(
      Option<Either<GeneralFailure, UserResponseDataModel>> response,
      bool isLoading) {
    return _OnProfileDataUpdated(
      response,
      isLoading,
    );
  }

// ignore: unused_element
  _OnAddressChanged onAddressChanged(
      Option<Either<GeneralFailure, AddressResponse>> response,
      bool isLoading) {
    return _OnAddressChanged(
      response,
      isLoading,
    );
  }

// ignore: unused_element
  _OnGetAddress onGetAddress(
      Option<Either<GeneralFailure, AddressResponse>> response,
      bool isLoading) {
    return _OnGetAddress(
      response,
      isLoading,
    );
  }

// ignore: unused_element
  _OnForgotPassword onForgotPassword(
      Option<Either<GeneralFailure, String>> response, bool isLoading) {
    return _OnForgotPassword(
      response,
      isLoading,
    );
  }

// ignore: unused_element
  _OnGetSingleUser onGetSingleUser(UserDataModel response) {
    return _OnGetSingleUser(
      response,
    );
  }

// ignore: unused_element
  _OnRefreshUserData onRefreshUserData(UserDataModel iser) {
    return _OnRefreshUserData(
      iser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({GeneralFailure failure});

  $GeneralFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error(
      failure == freezed ? _value.failure : failure as GeneralFailure,
    ));
  }

  @override
  $GeneralFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $GeneralFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.failure) : assert(failure != null);

  @override
  final GeneralFailure failure;

  @override
  String toString() {
    return 'UserState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserState {
  const factory _Error(GeneralFailure failure) = _$_Error;

  GeneralFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnChangePasswordCopyWith<$Res> {
  factory _$OnChangePasswordCopyWith(
          _OnChangePassword value, $Res Function(_OnChangePassword) then) =
      __$OnChangePasswordCopyWithImpl<$Res>;
  $Res call({String success});
}

/// @nodoc
class __$OnChangePasswordCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$OnChangePasswordCopyWith<$Res> {
  __$OnChangePasswordCopyWithImpl(
      _OnChangePassword _value, $Res Function(_OnChangePassword) _then)
      : super(_value, (v) => _then(v as _OnChangePassword));

  @override
  _OnChangePassword get _value => super._value as _OnChangePassword;

  @override
  $Res call({
    Object success = freezed,
  }) {
    return _then(_OnChangePassword(
      success == freezed ? _value.success : success as String,
    ));
  }
}

/// @nodoc
class _$_OnChangePassword implements _OnChangePassword {
  const _$_OnChangePassword(this.success) : assert(success != null);

  @override
  final String success;

  @override
  String toString() {
    return 'UserState.onChangePassword(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnChangePassword &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$OnChangePasswordCopyWith<_OnChangePassword> get copyWith =>
      __$OnChangePasswordCopyWithImpl<_OnChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onChangePassword(success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangePassword != null) {
      return onChangePassword(success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onChangePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangePassword != null) {
      return onChangePassword(this);
    }
    return orElse();
  }
}

abstract class _OnChangePassword implements UserState {
  const factory _OnChangePassword(String success) = _$_OnChangePassword;

  String get success;
  @JsonKey(ignore: true)
  _$OnChangePasswordCopyWith<_OnChangePassword> get copyWith;
}

/// @nodoc
abstract class _$UploadProfilePhotoCopyWith<$Res> {
  factory _$UploadProfilePhotoCopyWith(
          _UploadProfilePhoto value, $Res Function(_UploadProfilePhoto) then) =
      __$UploadProfilePhotoCopyWithImpl<$Res>;
  $Res call({Option<Either<GeneralFailure, String>> response, bool isLoading});
}

/// @nodoc
class __$UploadProfilePhotoCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$UploadProfilePhotoCopyWith<$Res> {
  __$UploadProfilePhotoCopyWithImpl(
      _UploadProfilePhoto _value, $Res Function(_UploadProfilePhoto) _then)
      : super(_value, (v) => _then(v as _UploadProfilePhoto));

  @override
  _UploadProfilePhoto get _value => super._value as _UploadProfilePhoto;

  @override
  $Res call({
    Object response = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_UploadProfilePhoto(
      response == freezed
          ? _value.response
          : response as Option<Either<GeneralFailure, String>>,
      isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_UploadProfilePhoto implements _UploadProfilePhoto {
  const _$_UploadProfilePhoto(this.response, this.isLoading)
      : assert(response != null),
        assert(isLoading != null);

  @override
  final Option<Either<GeneralFailure, String>> response;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UserState.uploadProfilePhoto(response: $response, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadProfilePhoto &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$UploadProfilePhotoCopyWith<_UploadProfilePhoto> get copyWith =>
      __$UploadProfilePhotoCopyWithImpl<_UploadProfilePhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return uploadProfilePhoto(response, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadProfilePhoto != null) {
      return uploadProfilePhoto(response, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return uploadProfilePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadProfilePhoto != null) {
      return uploadProfilePhoto(this);
    }
    return orElse();
  }
}

abstract class _UploadProfilePhoto implements UserState {
  const factory _UploadProfilePhoto(
          Option<Either<GeneralFailure, String>> response, bool isLoading) =
      _$_UploadProfilePhoto;

  Option<Either<GeneralFailure, String>> get response;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$UploadProfilePhotoCopyWith<_UploadProfilePhoto> get copyWith;
}

/// @nodoc
abstract class _$OnProfileDataUpdatedCopyWith<$Res> {
  factory _$OnProfileDataUpdatedCopyWith(_OnProfileDataUpdated value,
          $Res Function(_OnProfileDataUpdated) then) =
      __$OnProfileDataUpdatedCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<GeneralFailure, UserResponseDataModel>> response,
      bool isLoading});
}

/// @nodoc
class __$OnProfileDataUpdatedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$OnProfileDataUpdatedCopyWith<$Res> {
  __$OnProfileDataUpdatedCopyWithImpl(
      _OnProfileDataUpdated _value, $Res Function(_OnProfileDataUpdated) _then)
      : super(_value, (v) => _then(v as _OnProfileDataUpdated));

  @override
  _OnProfileDataUpdated get _value => super._value as _OnProfileDataUpdated;

  @override
  $Res call({
    Object response = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_OnProfileDataUpdated(
      response == freezed
          ? _value.response
          : response as Option<Either<GeneralFailure, UserResponseDataModel>>,
      isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_OnProfileDataUpdated implements _OnProfileDataUpdated {
  const _$_OnProfileDataUpdated(this.response, this.isLoading)
      : assert(response != null),
        assert(isLoading != null);

  @override
  final Option<Either<GeneralFailure, UserResponseDataModel>> response;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UserState.onProfileDataUpdated(response: $response, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnProfileDataUpdated &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$OnProfileDataUpdatedCopyWith<_OnProfileDataUpdated> get copyWith =>
      __$OnProfileDataUpdatedCopyWithImpl<_OnProfileDataUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onProfileDataUpdated(response, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onProfileDataUpdated != null) {
      return onProfileDataUpdated(response, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onProfileDataUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onProfileDataUpdated != null) {
      return onProfileDataUpdated(this);
    }
    return orElse();
  }
}

abstract class _OnProfileDataUpdated implements UserState {
  const factory _OnProfileDataUpdated(
      Option<Either<GeneralFailure, UserResponseDataModel>> response,
      bool isLoading) = _$_OnProfileDataUpdated;

  Option<Either<GeneralFailure, UserResponseDataModel>> get response;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$OnProfileDataUpdatedCopyWith<_OnProfileDataUpdated> get copyWith;
}

/// @nodoc
abstract class _$OnAddressChangedCopyWith<$Res> {
  factory _$OnAddressChangedCopyWith(
          _OnAddressChanged value, $Res Function(_OnAddressChanged) then) =
      __$OnAddressChangedCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<GeneralFailure, AddressResponse>> response,
      bool isLoading});
}

/// @nodoc
class __$OnAddressChangedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$OnAddressChangedCopyWith<$Res> {
  __$OnAddressChangedCopyWithImpl(
      _OnAddressChanged _value, $Res Function(_OnAddressChanged) _then)
      : super(_value, (v) => _then(v as _OnAddressChanged));

  @override
  _OnAddressChanged get _value => super._value as _OnAddressChanged;

  @override
  $Res call({
    Object response = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_OnAddressChanged(
      response == freezed
          ? _value.response
          : response as Option<Either<GeneralFailure, AddressResponse>>,
      isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_OnAddressChanged implements _OnAddressChanged {
  const _$_OnAddressChanged(this.response, this.isLoading)
      : assert(response != null),
        assert(isLoading != null);

  @override
  final Option<Either<GeneralFailure, AddressResponse>> response;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UserState.onAddressChanged(response: $response, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnAddressChanged &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$OnAddressChangedCopyWith<_OnAddressChanged> get copyWith =>
      __$OnAddressChangedCopyWithImpl<_OnAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onAddressChanged(response, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onAddressChanged != null) {
      return onAddressChanged(response, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onAddressChanged != null) {
      return onAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _OnAddressChanged implements UserState {
  const factory _OnAddressChanged(
      Option<Either<GeneralFailure, AddressResponse>> response,
      bool isLoading) = _$_OnAddressChanged;

  Option<Either<GeneralFailure, AddressResponse>> get response;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$OnAddressChangedCopyWith<_OnAddressChanged> get copyWith;
}

/// @nodoc
abstract class _$OnGetAddressCopyWith<$Res> {
  factory _$OnGetAddressCopyWith(
          _OnGetAddress value, $Res Function(_OnGetAddress) then) =
      __$OnGetAddressCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<GeneralFailure, AddressResponse>> response,
      bool isLoading});
}

/// @nodoc
class __$OnGetAddressCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$OnGetAddressCopyWith<$Res> {
  __$OnGetAddressCopyWithImpl(
      _OnGetAddress _value, $Res Function(_OnGetAddress) _then)
      : super(_value, (v) => _then(v as _OnGetAddress));

  @override
  _OnGetAddress get _value => super._value as _OnGetAddress;

  @override
  $Res call({
    Object response = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_OnGetAddress(
      response == freezed
          ? _value.response
          : response as Option<Either<GeneralFailure, AddressResponse>>,
      isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_OnGetAddress implements _OnGetAddress {
  const _$_OnGetAddress(this.response, this.isLoading)
      : assert(response != null),
        assert(isLoading != null);

  @override
  final Option<Either<GeneralFailure, AddressResponse>> response;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UserState.onGetAddress(response: $response, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetAddress &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$OnGetAddressCopyWith<_OnGetAddress> get copyWith =>
      __$OnGetAddressCopyWithImpl<_OnGetAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onGetAddress(response, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetAddress != null) {
      return onGetAddress(response, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onGetAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetAddress != null) {
      return onGetAddress(this);
    }
    return orElse();
  }
}

abstract class _OnGetAddress implements UserState {
  const factory _OnGetAddress(
      Option<Either<GeneralFailure, AddressResponse>> response,
      bool isLoading) = _$_OnGetAddress;

  Option<Either<GeneralFailure, AddressResponse>> get response;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$OnGetAddressCopyWith<_OnGetAddress> get copyWith;
}

/// @nodoc
abstract class _$OnForgotPasswordCopyWith<$Res> {
  factory _$OnForgotPasswordCopyWith(
          _OnForgotPassword value, $Res Function(_OnForgotPassword) then) =
      __$OnForgotPasswordCopyWithImpl<$Res>;
  $Res call({Option<Either<GeneralFailure, String>> response, bool isLoading});
}

/// @nodoc
class __$OnForgotPasswordCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$OnForgotPasswordCopyWith<$Res> {
  __$OnForgotPasswordCopyWithImpl(
      _OnForgotPassword _value, $Res Function(_OnForgotPassword) _then)
      : super(_value, (v) => _then(v as _OnForgotPassword));

  @override
  _OnForgotPassword get _value => super._value as _OnForgotPassword;

  @override
  $Res call({
    Object response = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_OnForgotPassword(
      response == freezed
          ? _value.response
          : response as Option<Either<GeneralFailure, String>>,
      isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_OnForgotPassword implements _OnForgotPassword {
  const _$_OnForgotPassword(this.response, this.isLoading)
      : assert(response != null),
        assert(isLoading != null);

  @override
  final Option<Either<GeneralFailure, String>> response;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UserState.onForgotPassword(response: $response, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnForgotPassword &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$OnForgotPasswordCopyWith<_OnForgotPassword> get copyWith =>
      __$OnForgotPasswordCopyWithImpl<_OnForgotPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onForgotPassword(response, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onForgotPassword != null) {
      return onForgotPassword(response, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onForgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onForgotPassword != null) {
      return onForgotPassword(this);
    }
    return orElse();
  }
}

abstract class _OnForgotPassword implements UserState {
  const factory _OnForgotPassword(
          Option<Either<GeneralFailure, String>> response, bool isLoading) =
      _$_OnForgotPassword;

  Option<Either<GeneralFailure, String>> get response;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$OnForgotPasswordCopyWith<_OnForgotPassword> get copyWith;
}

/// @nodoc
abstract class _$OnGetSingleUserCopyWith<$Res> {
  factory _$OnGetSingleUserCopyWith(
          _OnGetSingleUser value, $Res Function(_OnGetSingleUser) then) =
      __$OnGetSingleUserCopyWithImpl<$Res>;
  $Res call({UserDataModel response});

  $UserDataModelCopyWith<$Res> get response;
}

/// @nodoc
class __$OnGetSingleUserCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$OnGetSingleUserCopyWith<$Res> {
  __$OnGetSingleUserCopyWithImpl(
      _OnGetSingleUser _value, $Res Function(_OnGetSingleUser) _then)
      : super(_value, (v) => _then(v as _OnGetSingleUser));

  @override
  _OnGetSingleUser get _value => super._value as _OnGetSingleUser;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(_OnGetSingleUser(
      response == freezed ? _value.response : response as UserDataModel,
    ));
  }

  @override
  $UserDataModelCopyWith<$Res> get response {
    if (_value.response == null) {
      return null;
    }
    return $UserDataModelCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
class _$_OnGetSingleUser implements _OnGetSingleUser {
  const _$_OnGetSingleUser(this.response) : assert(response != null);

  @override
  final UserDataModel response;

  @override
  String toString() {
    return 'UserState.onGetSingleUser(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetSingleUser &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$OnGetSingleUserCopyWith<_OnGetSingleUser> get copyWith =>
      __$OnGetSingleUserCopyWithImpl<_OnGetSingleUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onGetSingleUser(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetSingleUser != null) {
      return onGetSingleUser(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onGetSingleUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetSingleUser != null) {
      return onGetSingleUser(this);
    }
    return orElse();
  }
}

abstract class _OnGetSingleUser implements UserState {
  const factory _OnGetSingleUser(UserDataModel response) = _$_OnGetSingleUser;

  UserDataModel get response;
  @JsonKey(ignore: true)
  _$OnGetSingleUserCopyWith<_OnGetSingleUser> get copyWith;
}

/// @nodoc
abstract class _$OnRefreshUserDataCopyWith<$Res> {
  factory _$OnRefreshUserDataCopyWith(
          _OnRefreshUserData value, $Res Function(_OnRefreshUserData) then) =
      __$OnRefreshUserDataCopyWithImpl<$Res>;
  $Res call({UserDataModel iser});

  $UserDataModelCopyWith<$Res> get iser;
}

/// @nodoc
class __$OnRefreshUserDataCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$OnRefreshUserDataCopyWith<$Res> {
  __$OnRefreshUserDataCopyWithImpl(
      _OnRefreshUserData _value, $Res Function(_OnRefreshUserData) _then)
      : super(_value, (v) => _then(v as _OnRefreshUserData));

  @override
  _OnRefreshUserData get _value => super._value as _OnRefreshUserData;

  @override
  $Res call({
    Object iser = freezed,
  }) {
    return _then(_OnRefreshUserData(
      iser == freezed ? _value.iser : iser as UserDataModel,
    ));
  }

  @override
  $UserDataModelCopyWith<$Res> get iser {
    if (_value.iser == null) {
      return null;
    }
    return $UserDataModelCopyWith<$Res>(_value.iser, (value) {
      return _then(_value.copyWith(iser: value));
    });
  }
}

/// @nodoc
class _$_OnRefreshUserData implements _OnRefreshUserData {
  const _$_OnRefreshUserData(this.iser) : assert(iser != null);

  @override
  final UserDataModel iser;

  @override
  String toString() {
    return 'UserState.onRefreshUserData(iser: $iser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnRefreshUserData &&
            (identical(other.iser, iser) ||
                const DeepCollectionEquality().equals(other.iser, iser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(iser);

  @JsonKey(ignore: true)
  @override
  _$OnRefreshUserDataCopyWith<_OnRefreshUserData> get copyWith =>
      __$OnRefreshUserDataCopyWithImpl<_OnRefreshUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onChangePassword(String success),
    @required
        TResult uploadProfilePhoto(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required
        TResult onProfileDataUpdated(
            Option<Either<GeneralFailure, UserResponseDataModel>> response,
            bool isLoading),
    @required
        TResult onAddressChanged(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onGetAddress(
            Option<Either<GeneralFailure, AddressResponse>> response,
            bool isLoading),
    @required
        TResult onForgotPassword(
            Option<Either<GeneralFailure, String>> response, bool isLoading),
    @required TResult onGetSingleUser(UserDataModel response),
    @required TResult onRefreshUserData(UserDataModel iser),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onRefreshUserData(iser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onChangePassword(String success),
    TResult uploadProfilePhoto(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onProfileDataUpdated(
        Option<Either<GeneralFailure, UserResponseDataModel>> response,
        bool isLoading),
    TResult onAddressChanged(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onGetAddress(
        Option<Either<GeneralFailure, AddressResponse>> response,
        bool isLoading),
    TResult onForgotPassword(
        Option<Either<GeneralFailure, String>> response, bool isLoading),
    TResult onGetSingleUser(UserDataModel response),
    TResult onRefreshUserData(UserDataModel iser),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRefreshUserData != null) {
      return onRefreshUserData(iser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onChangePassword(_OnChangePassword value),
    @required TResult uploadProfilePhoto(_UploadProfilePhoto value),
    @required TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    @required TResult onAddressChanged(_OnAddressChanged value),
    @required TResult onGetAddress(_OnGetAddress value),
    @required TResult onForgotPassword(_OnForgotPassword value),
    @required TResult onGetSingleUser(_OnGetSingleUser value),
    @required TResult onRefreshUserData(_OnRefreshUserData value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onChangePassword != null);
    assert(uploadProfilePhoto != null);
    assert(onProfileDataUpdated != null);
    assert(onAddressChanged != null);
    assert(onGetAddress != null);
    assert(onForgotPassword != null);
    assert(onGetSingleUser != null);
    assert(onRefreshUserData != null);
    return onRefreshUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onChangePassword(_OnChangePassword value),
    TResult uploadProfilePhoto(_UploadProfilePhoto value),
    TResult onProfileDataUpdated(_OnProfileDataUpdated value),
    TResult onAddressChanged(_OnAddressChanged value),
    TResult onGetAddress(_OnGetAddress value),
    TResult onForgotPassword(_OnForgotPassword value),
    TResult onGetSingleUser(_OnGetSingleUser value),
    TResult onRefreshUserData(_OnRefreshUserData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onRefreshUserData != null) {
      return onRefreshUserData(this);
    }
    return orElse();
  }
}

abstract class _OnRefreshUserData implements UserState {
  const factory _OnRefreshUserData(UserDataModel iser) = _$_OnRefreshUserData;

  UserDataModel get iser;
  @JsonKey(ignore: true)
  _$OnRefreshUserDataCopyWith<_OnRefreshUserData> get copyWith;
}
