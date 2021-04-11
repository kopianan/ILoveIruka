part of 'partnership_bloc.dart';

@freezed
abstract class PartnershipState with _$PartnershipState {
  const factory PartnershipState.loading() = _Loading;
  const factory PartnershipState.initial() = _Initial;
  const factory PartnershipState.error(String error) = _Error;
  const factory PartnershipState.onGetParternData(
          Either<GeneralFailure, List<PartnershipDataModel>> listData) =
      _OnGetParternData;
}
