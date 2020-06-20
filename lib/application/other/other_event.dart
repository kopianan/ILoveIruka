part of 'other_bloc.dart';

@freezed
abstract class OtherEvent with _$OtherEvent {
  factory OtherEvent.getProvinceOnly() = _GetProvinceOnly;
  factory OtherEvent.getCityOnly({String provinceId}) = _GetCityOnly;
}
