// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'address_req_res_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddressReqResDataModel _$AddressReqResDataModelFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'addressResponse':
      return AddressResponse.fromJson(json);
    case 'addressRequest':
      return AddressRequest.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$AddressReqResDataModelTearOff {
  const _$AddressReqResDataModelTearOff();

// ignore: unused_element
  AddressResponse addressResponse(
      {String id,
      String user,
      String province,
      @JsonKey(name: 'province_id') String provinceId,
      String city,
      @JsonKey(name: 'city_id') String cityId,
      String type,
      String address,
      String postalCode}) {
    return AddressResponse(
      id: id,
      user: user,
      province: province,
      provinceId: provinceId,
      city: city,
      cityId: cityId,
      type: type,
      address: address,
      postalCode: postalCode,
    );
  }

// ignore: unused_element
  AddressRequest addressRequest(
      {String province,
      @JsonKey(name: 'province_id') String provinceId,
      String city,
      @JsonKey(name: 'city_id') String cityId,
      String type,
      String address,
      String postalCode}) {
    return AddressRequest(
      province: province,
      provinceId: provinceId,
      city: city,
      cityId: cityId,
      type: type,
      address: address,
      postalCode: postalCode,
    );
  }

// ignore: unused_element
  AddressReqResDataModel fromJson(Map<String, Object> json) {
    return AddressReqResDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddressReqResDataModel = _$AddressReqResDataModelTearOff();

/// @nodoc
mixin _$AddressReqResDataModel {
  String get province;
  @JsonKey(name: 'province_id')
  String get provinceId;
  String get city;
  @JsonKey(name: 'city_id')
  String get cityId;
  String get type;
  String get address;
  String get postalCode;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult addressResponse(
            String id,
            String user,
            String province,
            @JsonKey(name: 'province_id') String provinceId,
            String city,
            @JsonKey(name: 'city_id') String cityId,
            String type,
            String address,
            String postalCode),
    @required
        TResult addressRequest(
            String province,
            @JsonKey(name: 'province_id') String provinceId,
            String city,
            @JsonKey(name: 'city_id') String cityId,
            String type,
            String address,
            String postalCode),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addressResponse(
        String id,
        String user,
        String province,
        @JsonKey(name: 'province_id') String provinceId,
        String city,
        @JsonKey(name: 'city_id') String cityId,
        String type,
        String address,
        String postalCode),
    TResult addressRequest(
        String province,
        @JsonKey(name: 'province_id') String provinceId,
        String city,
        @JsonKey(name: 'city_id') String cityId,
        String type,
        String address,
        String postalCode),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addressResponse(AddressResponse value),
    @required TResult addressRequest(AddressRequest value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addressResponse(AddressResponse value),
    TResult addressRequest(AddressRequest value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AddressReqResDataModelCopyWith<AddressReqResDataModel> get copyWith;
}

/// @nodoc
abstract class $AddressReqResDataModelCopyWith<$Res> {
  factory $AddressReqResDataModelCopyWith(AddressReqResDataModel value,
          $Res Function(AddressReqResDataModel) then) =
      _$AddressReqResDataModelCopyWithImpl<$Res>;
  $Res call(
      {String province,
      @JsonKey(name: 'province_id') String provinceId,
      String city,
      @JsonKey(name: 'city_id') String cityId,
      String type,
      String address,
      String postalCode});
}

/// @nodoc
class _$AddressReqResDataModelCopyWithImpl<$Res>
    implements $AddressReqResDataModelCopyWith<$Res> {
  _$AddressReqResDataModelCopyWithImpl(this._value, this._then);

  final AddressReqResDataModel _value;
  // ignore: unused_field
  final $Res Function(AddressReqResDataModel) _then;

  @override
  $Res call({
    Object province = freezed,
    Object provinceId = freezed,
    Object city = freezed,
    Object cityId = freezed,
    Object type = freezed,
    Object address = freezed,
    Object postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      province: province == freezed ? _value.province : province as String,
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
      city: city == freezed ? _value.city : city as String,
      cityId: cityId == freezed ? _value.cityId : cityId as String,
      type: type == freezed ? _value.type : type as String,
      address: address == freezed ? _value.address : address as String,
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
    ));
  }
}

/// @nodoc
abstract class $AddressResponseCopyWith<$Res>
    implements $AddressReqResDataModelCopyWith<$Res> {
  factory $AddressResponseCopyWith(
          AddressResponse value, $Res Function(AddressResponse) then) =
      _$AddressResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String user,
      String province,
      @JsonKey(name: 'province_id') String provinceId,
      String city,
      @JsonKey(name: 'city_id') String cityId,
      String type,
      String address,
      String postalCode});
}

/// @nodoc
class _$AddressResponseCopyWithImpl<$Res>
    extends _$AddressReqResDataModelCopyWithImpl<$Res>
    implements $AddressResponseCopyWith<$Res> {
  _$AddressResponseCopyWithImpl(
      AddressResponse _value, $Res Function(AddressResponse) _then)
      : super(_value, (v) => _then(v as AddressResponse));

  @override
  AddressResponse get _value => super._value as AddressResponse;

  @override
  $Res call({
    Object id = freezed,
    Object user = freezed,
    Object province = freezed,
    Object provinceId = freezed,
    Object city = freezed,
    Object cityId = freezed,
    Object type = freezed,
    Object address = freezed,
    Object postalCode = freezed,
  }) {
    return _then(AddressResponse(
      id: id == freezed ? _value.id : id as String,
      user: user == freezed ? _value.user : user as String,
      province: province == freezed ? _value.province : province as String,
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
      city: city == freezed ? _value.city : city as String,
      cityId: cityId == freezed ? _value.cityId : cityId as String,
      type: type == freezed ? _value.type : type as String,
      address: address == freezed ? _value.address : address as String,
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$AddressResponse implements AddressResponse {
  _$AddressResponse(
      {this.id,
      this.user,
      this.province,
      @JsonKey(name: 'province_id') this.provinceId,
      this.city,
      @JsonKey(name: 'city_id') this.cityId,
      this.type,
      this.address,
      this.postalCode});

  factory _$AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$_$AddressResponseFromJson(json);

  @override
  final String id;
  @override
  final String user;
  @override
  final String province;
  @override
  @JsonKey(name: 'province_id')
  final String provinceId;
  @override
  final String city;
  @override
  @JsonKey(name: 'city_id')
  final String cityId;
  @override
  final String type;
  @override
  final String address;
  @override
  final String postalCode;

  @override
  String toString() {
    return 'AddressReqResDataModel.addressResponse(id: $id, user: $user, province: $province, provinceId: $provinceId, city: $city, cityId: $cityId, type: $type, address: $address, postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(provinceId) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(postalCode);

  @JsonKey(ignore: true)
  @override
  $AddressResponseCopyWith<AddressResponse> get copyWith =>
      _$AddressResponseCopyWithImpl<AddressResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult addressResponse(
            String id,
            String user,
            String province,
            @JsonKey(name: 'province_id') String provinceId,
            String city,
            @JsonKey(name: 'city_id') String cityId,
            String type,
            String address,
            String postalCode),
    @required
        TResult addressRequest(
            String province,
            @JsonKey(name: 'province_id') String provinceId,
            String city,
            @JsonKey(name: 'city_id') String cityId,
            String type,
            String address,
            String postalCode),
  }) {
    assert(addressResponse != null);
    assert(addressRequest != null);
    return addressResponse(id, user, province, provinceId, city, cityId, type,
        address, postalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addressResponse(
        String id,
        String user,
        String province,
        @JsonKey(name: 'province_id') String provinceId,
        String city,
        @JsonKey(name: 'city_id') String cityId,
        String type,
        String address,
        String postalCode),
    TResult addressRequest(
        String province,
        @JsonKey(name: 'province_id') String provinceId,
        String city,
        @JsonKey(name: 'city_id') String cityId,
        String type,
        String address,
        String postalCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addressResponse != null) {
      return addressResponse(id, user, province, provinceId, city, cityId, type,
          address, postalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addressResponse(AddressResponse value),
    @required TResult addressRequest(AddressRequest value),
  }) {
    assert(addressResponse != null);
    assert(addressRequest != null);
    return addressResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addressResponse(AddressResponse value),
    TResult addressRequest(AddressRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addressResponse != null) {
      return addressResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AddressResponseToJson(this)..['runtimeType'] = 'addressResponse';
  }
}

abstract class AddressResponse implements AddressReqResDataModel {
  factory AddressResponse(
      {String id,
      String user,
      String province,
      @JsonKey(name: 'province_id') String provinceId,
      String city,
      @JsonKey(name: 'city_id') String cityId,
      String type,
      String address,
      String postalCode}) = _$AddressResponse;

  factory AddressResponse.fromJson(Map<String, dynamic> json) =
      _$AddressResponse.fromJson;

  String get id;
  String get user;
  @override
  String get province;
  @override
  @JsonKey(name: 'province_id')
  String get provinceId;
  @override
  String get city;
  @override
  @JsonKey(name: 'city_id')
  String get cityId;
  @override
  String get type;
  @override
  String get address;
  @override
  String get postalCode;
  @override
  @JsonKey(ignore: true)
  $AddressResponseCopyWith<AddressResponse> get copyWith;
}

/// @nodoc
abstract class $AddressRequestCopyWith<$Res>
    implements $AddressReqResDataModelCopyWith<$Res> {
  factory $AddressRequestCopyWith(
          AddressRequest value, $Res Function(AddressRequest) then) =
      _$AddressRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String province,
      @JsonKey(name: 'province_id') String provinceId,
      String city,
      @JsonKey(name: 'city_id') String cityId,
      String type,
      String address,
      String postalCode});
}

/// @nodoc
class _$AddressRequestCopyWithImpl<$Res>
    extends _$AddressReqResDataModelCopyWithImpl<$Res>
    implements $AddressRequestCopyWith<$Res> {
  _$AddressRequestCopyWithImpl(
      AddressRequest _value, $Res Function(AddressRequest) _then)
      : super(_value, (v) => _then(v as AddressRequest));

  @override
  AddressRequest get _value => super._value as AddressRequest;

  @override
  $Res call({
    Object province = freezed,
    Object provinceId = freezed,
    Object city = freezed,
    Object cityId = freezed,
    Object type = freezed,
    Object address = freezed,
    Object postalCode = freezed,
  }) {
    return _then(AddressRequest(
      province: province == freezed ? _value.province : province as String,
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
      city: city == freezed ? _value.city : city as String,
      cityId: cityId == freezed ? _value.cityId : cityId as String,
      type: type == freezed ? _value.type : type as String,
      address: address == freezed ? _value.address : address as String,
      postalCode:
          postalCode == freezed ? _value.postalCode : postalCode as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$AddressRequest implements AddressRequest {
  _$AddressRequest(
      {this.province,
      @JsonKey(name: 'province_id') this.provinceId,
      this.city,
      @JsonKey(name: 'city_id') this.cityId,
      this.type,
      this.address,
      this.postalCode});

  factory _$AddressRequest.fromJson(Map<String, dynamic> json) =>
      _$_$AddressRequestFromJson(json);

  @override
  final String province;
  @override
  @JsonKey(name: 'province_id')
  final String provinceId;
  @override
  final String city;
  @override
  @JsonKey(name: 'city_id')
  final String cityId;
  @override
  final String type;
  @override
  final String address;
  @override
  final String postalCode;

  @override
  String toString() {
    return 'AddressReqResDataModel.addressRequest(province: $province, provinceId: $provinceId, city: $city, cityId: $cityId, type: $type, address: $address, postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressRequest &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(provinceId) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(postalCode);

  @JsonKey(ignore: true)
  @override
  $AddressRequestCopyWith<AddressRequest> get copyWith =>
      _$AddressRequestCopyWithImpl<AddressRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult addressResponse(
            String id,
            String user,
            String province,
            @JsonKey(name: 'province_id') String provinceId,
            String city,
            @JsonKey(name: 'city_id') String cityId,
            String type,
            String address,
            String postalCode),
    @required
        TResult addressRequest(
            String province,
            @JsonKey(name: 'province_id') String provinceId,
            String city,
            @JsonKey(name: 'city_id') String cityId,
            String type,
            String address,
            String postalCode),
  }) {
    assert(addressResponse != null);
    assert(addressRequest != null);
    return addressRequest(
        province, provinceId, city, cityId, type, address, postalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addressResponse(
        String id,
        String user,
        String province,
        @JsonKey(name: 'province_id') String provinceId,
        String city,
        @JsonKey(name: 'city_id') String cityId,
        String type,
        String address,
        String postalCode),
    TResult addressRequest(
        String province,
        @JsonKey(name: 'province_id') String provinceId,
        String city,
        @JsonKey(name: 'city_id') String cityId,
        String type,
        String address,
        String postalCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addressRequest != null) {
      return addressRequest(
          province, provinceId, city, cityId, type, address, postalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addressResponse(AddressResponse value),
    @required TResult addressRequest(AddressRequest value),
  }) {
    assert(addressResponse != null);
    assert(addressRequest != null);
    return addressRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addressResponse(AddressResponse value),
    TResult addressRequest(AddressRequest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addressRequest != null) {
      return addressRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AddressRequestToJson(this)..['runtimeType'] = 'addressRequest';
  }
}

abstract class AddressRequest implements AddressReqResDataModel {
  factory AddressRequest(
      {String province,
      @JsonKey(name: 'province_id') String provinceId,
      String city,
      @JsonKey(name: 'city_id') String cityId,
      String type,
      String address,
      String postalCode}) = _$AddressRequest;

  factory AddressRequest.fromJson(Map<String, dynamic> json) =
      _$AddressRequest.fromJson;

  @override
  String get province;
  @override
  @JsonKey(name: 'province_id')
  String get provinceId;
  @override
  String get city;
  @override
  @JsonKey(name: 'city_id')
  String get cityId;
  @override
  String get type;
  @override
  String get address;
  @override
  String get postalCode;
  @override
  @JsonKey(ignore: true)
  $AddressRequestCopyWith<AddressRequest> get copyWith;
}
