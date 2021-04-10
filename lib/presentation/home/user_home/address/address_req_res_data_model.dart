import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_req_res_data_model.freezed.dart';
part 'address_req_res_data_model.g.dart';

@freezed
abstract class AddressReqResDataModel with _$AddressReqResDataModel {
  factory AddressReqResDataModel.addressResponse({
    String id,
    String user,
    String province,
    @JsonKey(name: 'province_id') String provinceId,
    String city,
    @JsonKey(name: 'city_id') String cityId,
    String type,
    String address,
    String postalCode,
  }) = AddressResponse;
  factory AddressReqResDataModel.addressRequest({
    String province,
    @JsonKey(name: 'province_id') String provinceId,
    String city,
    @JsonKey(name: 'city_id') String cityId,
    String type,
    String address,
    String postalCode,
  }) = AddressRequest;

  factory AddressReqResDataModel.fromJson(Map<String, dynamic> json) =>
      _$AddressReqResDataModelFromJson(json);
}
