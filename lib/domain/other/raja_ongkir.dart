import 'package:freezed_annotation/freezed_annotation.dart';

part 'raja_ongkir.freezed.dart';
part 'raja_ongkir.g.dart';

@freezed
abstract class RajaOngkir with _$RajaOngkir {
  factory RajaOngkir({
    @JsonKey(name: "city_id") String cityId,
    @JsonKey(name: "province_id") String provinceId,
    String province,
    @JsonKey(name: "city_name") String cityName,
  }) = _RajaOngkir;


  factory RajaOngkir.fromJson(Map<String, dynamic> json) =>
      _$RajaOngkirFromJson(json);
}
