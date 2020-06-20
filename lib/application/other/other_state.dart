part of 'other_bloc.dart';

@freezed
abstract class OtherState with _$OtherState {
  factory OtherState.initial() = _Initial;
  factory OtherState.getProvinceOption(
          {bool isLoading,
          Option<Either<String, List<RajaOngkir>>> getProvinceOption}) =
      _GetProvinceOption;
  factory OtherState.getCityOption(
      {bool isLoading,
      Option<Either<String, List<RajaOngkir>>> getCityOption}) = _GetCityOption;
}
