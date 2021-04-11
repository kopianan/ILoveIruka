part of 'partnership_bloc.dart';

@freezed
abstract class PartnershipEvent with _$PartnershipEvent {
  const factory PartnershipEvent.getPartnersList() = _GetPartnersList;
}
