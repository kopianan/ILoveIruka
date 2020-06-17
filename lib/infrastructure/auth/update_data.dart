import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_data.freezed.dart';

@freezed
abstract class UpdateData with _$UpdateData {
  
  const factory UpdateData(
      {
      @JsonKey(name: "AccessKey") String accessKey,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "PhoneNumber") String phoneNumber,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Id") String id,
      @JsonKey(name: "Picture") String picture}) = UpdateCustomerData;


}
