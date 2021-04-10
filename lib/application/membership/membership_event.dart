part of 'membership_bloc.dart';

@freezed
abstract class MembershipEvent with _$MembershipEvent {
  const factory MembershipEvent.started() = _Started;
  const factory MembershipEvent.getMembershipList() = _GetMembershipList;
}
