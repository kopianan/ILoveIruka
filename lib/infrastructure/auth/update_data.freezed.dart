// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateDataTearOff {
  const _$UpdateDataTearOff();

// ignore: unused_element
  UpdateCustomerData call(
      {@JsonKey(name: "AccessKey") String accessKey,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "PhoneNumber") String phoneNumber,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Id") String id,
      @JsonKey(name: "Picture") String picture}) {
    return UpdateCustomerData(
      accessKey: accessKey,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      address: address,
      id: id,
      picture: picture,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateData = _$UpdateDataTearOff();

/// @nodoc
mixin _$UpdateData {
  @JsonKey(name: "AccessKey")
  String get accessKey;
  @JsonKey(name: "Name")
  String get name;
  @JsonKey(name: "Email")
  String get email;
  @JsonKey(name: "PhoneNumber")
  String get phoneNumber;
  @JsonKey(name: "Address")
  String get address;
  @JsonKey(name: "Id")
  String get id;
  @JsonKey(name: "Picture")
  String get picture;

  @JsonKey(ignore: true)
  $UpdateDataCopyWith<UpdateData> get copyWith;
}

/// @nodoc
abstract class $UpdateDataCopyWith<$Res> {
  factory $UpdateDataCopyWith(
          UpdateData value, $Res Function(UpdateData) then) =
      _$UpdateDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "AccessKey") String accessKey,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "PhoneNumber") String phoneNumber,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Id") String id,
      @JsonKey(name: "Picture") String picture});
}

/// @nodoc
class _$UpdateDataCopyWithImpl<$Res> implements $UpdateDataCopyWith<$Res> {
  _$UpdateDataCopyWithImpl(this._value, this._then);

  final UpdateData _value;
  // ignore: unused_field
  final $Res Function(UpdateData) _then;

  @override
  $Res call({
    Object accessKey = freezed,
    Object name = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object address = freezed,
    Object id = freezed,
    Object picture = freezed,
  }) {
    return _then(_value.copyWith(
      accessKey: accessKey == freezed ? _value.accessKey : accessKey as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      address: address == freezed ? _value.address : address as String,
      id: id == freezed ? _value.id : id as String,
      picture: picture == freezed ? _value.picture : picture as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateCustomerDataCopyWith<$Res>
    implements $UpdateDataCopyWith<$Res> {
  factory $UpdateCustomerDataCopyWith(
          UpdateCustomerData value, $Res Function(UpdateCustomerData) then) =
      _$UpdateCustomerDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "AccessKey") String accessKey,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "PhoneNumber") String phoneNumber,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Id") String id,
      @JsonKey(name: "Picture") String picture});
}

/// @nodoc
class _$UpdateCustomerDataCopyWithImpl<$Res>
    extends _$UpdateDataCopyWithImpl<$Res>
    implements $UpdateCustomerDataCopyWith<$Res> {
  _$UpdateCustomerDataCopyWithImpl(
      UpdateCustomerData _value, $Res Function(UpdateCustomerData) _then)
      : super(_value, (v) => _then(v as UpdateCustomerData));

  @override
  UpdateCustomerData get _value => super._value as UpdateCustomerData;

  @override
  $Res call({
    Object accessKey = freezed,
    Object name = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object address = freezed,
    Object id = freezed,
    Object picture = freezed,
  }) {
    return _then(UpdateCustomerData(
      accessKey: accessKey == freezed ? _value.accessKey : accessKey as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      address: address == freezed ? _value.address : address as String,
      id: id == freezed ? _value.id : id as String,
      picture: picture == freezed ? _value.picture : picture as String,
    ));
  }
}

/// @nodoc
class _$UpdateCustomerData implements UpdateCustomerData {
  const _$UpdateCustomerData(
      {@JsonKey(name: "AccessKey") this.accessKey,
      @JsonKey(name: "Name") this.name,
      @JsonKey(name: "Email") this.email,
      @JsonKey(name: "PhoneNumber") this.phoneNumber,
      @JsonKey(name: "Address") this.address,
      @JsonKey(name: "Id") this.id,
      @JsonKey(name: "Picture") this.picture});

  @override
  @JsonKey(name: "AccessKey")
  final String accessKey;
  @override
  @JsonKey(name: "Name")
  final String name;
  @override
  @JsonKey(name: "Email")
  final String email;
  @override
  @JsonKey(name: "PhoneNumber")
  final String phoneNumber;
  @override
  @JsonKey(name: "Address")
  final String address;
  @override
  @JsonKey(name: "Id")
  final String id;
  @override
  @JsonKey(name: "Picture")
  final String picture;

  @override
  String toString() {
    return 'UpdateData(accessKey: $accessKey, name: $name, email: $email, phoneNumber: $phoneNumber, address: $address, id: $id, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCustomerData &&
            (identical(other.accessKey, accessKey) ||
                const DeepCollectionEquality()
                    .equals(other.accessKey, accessKey)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessKey) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(picture);

  @JsonKey(ignore: true)
  @override
  $UpdateCustomerDataCopyWith<UpdateCustomerData> get copyWith =>
      _$UpdateCustomerDataCopyWithImpl<UpdateCustomerData>(this, _$identity);
}

abstract class UpdateCustomerData implements UpdateData {
  const factory UpdateCustomerData(
      {@JsonKey(name: "AccessKey") String accessKey,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "PhoneNumber") String phoneNumber,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Id") String id,
      @JsonKey(name: "Picture") String picture}) = _$UpdateCustomerData;

  @override
  @JsonKey(name: "AccessKey")
  String get accessKey;
  @override
  @JsonKey(name: "Name")
  String get name;
  @override
  @JsonKey(name: "Email")
  String get email;
  @override
  @JsonKey(name: "PhoneNumber")
  String get phoneNumber;
  @override
  @JsonKey(name: "Address")
  String get address;
  @override
  @JsonKey(name: "Id")
  String get id;
  @override
  @JsonKey(name: "Picture")
  String get picture;
  @override
  @JsonKey(ignore: true)
  $UpdateCustomerDataCopyWith<UpdateCustomerData> get copyWith;
}
