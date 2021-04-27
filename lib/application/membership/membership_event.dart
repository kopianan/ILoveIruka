part of 'membership_bloc.dart';

@freezed
abstract class MembershipEvent with _$MembershipEvent {
  const factory MembershipEvent.started() = _Started;
  const factory MembershipEvent.getMembershipList() = _GetMembershipList;
  const factory MembershipEvent.getMyMembership() = _GetMyMembership;
  const factory MembershipEvent.getMembershipDataById(String membershipId) =
      _GetMembershipDataById;
}
