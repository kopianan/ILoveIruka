part of 'membership_bloc.dart';

@freezed
abstract class MembershipState with _$MembershipState {
  const factory MembershipState.initial() = _Initial;
  const factory MembershipState.loading() = _Loading;
  const factory MembershipState.error(String err) = _Error;
  const factory MembershipState.onGetMemberList(
          {Either<GeneralFailure, List<MembershipDataModel>> onData}) =
      _OnGetMemberList;
  const factory MembershipState.onGetMyMembership(
          {Either<GeneralFailure, MemberInfoDataModel> onData}) =
      _OnGetMyMembership;
  const factory MembershipState.onGetSingleMembership(
          {Either<GeneralFailure, MembershipDataModel> onSingleMembership}) =
      _OnGetSingleMembership;
}
