part of 'address_cubit.dart';

@freezed
abstract class AddressState with _$AddressState {
  const factory AddressState.initial() = _Initial;
  const factory AddressState.loading() = _Loading ; 
  const factory AddressState.error() = _Error ; 
  const factory AddressState.getProvince(List<AddressDataModel> data) =
      _GetProvince;
}
