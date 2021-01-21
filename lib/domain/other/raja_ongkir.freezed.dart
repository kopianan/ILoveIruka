// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'raja_ongkir.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RajaOngkir _$RajaOngkirFromJson(Map<String, dynamic> json) {
  return _RajaOngkir.fromJson(json);
}

/// @nodoc
class _$RajaOngkirTearOff {
  const _$RajaOngkirTearOff();

// ignore: unused_element
  _RajaOngkir call(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      String province,
      @JsonKey(name: 'city_name') String cityName}) {
    return _RajaOngkir(
      cityId: cityId,
      provinceId: provinceId,
      province: province,
      cityName: cityName,
    );
  }

// ignore: unused_element
  RajaOngkir fromJson(Map<String, Object> json) {
    return RajaOngkir.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RajaOngkir = _$RajaOngkirTearOff();

/// @nodoc
mixin _$RajaOngkir {
  @JsonKey(name: 'city_id')
  String get cityId;
  @JsonKey(name: 'province_id')
  String get provinceId;
  String get province;
  @JsonKey(name: 'city_name')
  String get cityName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RajaOngkirCopyWith<RajaOngkir> get copyWith;
}

/// @nodoc
abstract class $RajaOngkirCopyWith<$Res> {
  factory $RajaOngkirCopyWith(
          RajaOngkir value, $Res Function(RajaOngkir) then) =
      _$RajaOngkirCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      String province,
      @JsonKey(name: 'city_name') String cityName});
}

/// @nodoc
class _$RajaOngkirCopyWithImpl<$Res> implements $RajaOngkirCopyWith<$Res> {
  _$RajaOngkirCopyWithImpl(this._value, this._then);

  final RajaOngkir _value;
  // ignore: unused_field
  final $Res Function(RajaOngkir) _then;

  @override
  $Res call({
    Object cityId = freezed,
    Object provinceId = freezed,
    Object province = freezed,
    Object cityName = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: cityId == freezed ? _value.cityId : cityId as String,
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
      province: province == freezed ? _value.province : province as String,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
    ));
  }
}

/// @nodoc
abstract class _$RajaOngkirCopyWith<$Res> implements $RajaOngkirCopyWith<$Res> {
  factory _$RajaOngkirCopyWith(
          _RajaOngkir value, $Res Function(_RajaOngkir) then) =
      __$RajaOngkirCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      String province,
      @JsonKey(name: 'city_name') String cityName});
}

/// @nodoc
class __$RajaOngkirCopyWithImpl<$Res> extends _$RajaOngkirCopyWithImpl<$Res>
    implements _$RajaOngkirCopyWith<$Res> {
  __$RajaOngkirCopyWithImpl(
      _RajaOngkir _value, $Res Function(_RajaOngkir) _then)
      : super(_value, (v) => _then(v as _RajaOngkir));

  @override
  _RajaOngkir get _value => super._value as _RajaOngkir;

  @override
  $Res call({
    Object cityId = freezed,
    Object provinceId = freezed,
    Object province = freezed,
    Object cityName = freezed,
  }) {
    return _then(_RajaOngkir(
      cityId: cityId == freezed ? _value.cityId : cityId as String,
      provinceId:
          provinceId == freezed ? _value.provinceId : provinceId as String,
      province: province == freezed ? _value.province : province as String,
      cityName: cityName == freezed ? _value.cityName : cityName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RajaOngkir implements _RajaOngkir {
  _$_RajaOngkir(
      {@JsonKey(name: 'city_id') this.cityId,
      @JsonKey(name: 'province_id') this.provinceId,
      this.province,
      @JsonKey(name: 'city_name') this.cityName});

  factory _$_RajaOngkir.fromJson(Map<String, dynamic> json) =>
      _$_$_RajaOngkirFromJson(json);

  @override
  @JsonKey(name: 'city_id')
  final String cityId;
  @override
  @JsonKey(name: 'province_id')
  final String provinceId;
  @override
  final String province;
  @override
  @JsonKey(name: 'city_name')
  final String cityName;

  @override
  String toString() {
    return 'RajaOngkir(cityId: $cityId, provinceId: $provinceId, province: $province, cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RajaOngkir &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(provinceId) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(cityName);

  @JsonKey(ignore: true)
  @override
  _$RajaOngkirCopyWith<_RajaOngkir> get copyWith =>
      __$RajaOngkirCopyWithImpl<_RajaOngkir>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RajaOngkirToJson(this);
  }
}

abstract class _RajaOngkir implements RajaOngkir {
  factory _RajaOngkir(
      {@JsonKey(name: 'city_id') String cityId,
      @JsonKey(name: 'province_id') String provinceId,
      String province,
      @JsonKey(name: 'city_name') String cityName}) = _$_RajaOngkir;

  factory _RajaOngkir.fromJson(Map<String, dynamic> json) =
      _$_RajaOngkir.fromJson;

  @override
  @JsonKey(name: 'city_id')
  String get cityId;
  @override
  @JsonKey(name: 'province_id')
  String get provinceId;
  @override
  String get province;
  @override
  @JsonKey(name: 'city_name')
  String get cityName;
  @override
  @JsonKey(ignore: true)
  _$RajaOngkirCopyWith<_RajaOngkir> get copyWith;
}
