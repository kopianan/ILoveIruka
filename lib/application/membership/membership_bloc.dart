import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/membership/i_membership_facade.dart';
import 'package:i_love_iruka/domain/membership/member_info_data_model.dart';
import 'package:i_love_iruka/domain/membership/membership_data_model.dart';
import 'package:injectable/injectable.dart';

part 'membership_event.dart';
part 'membership_state.dart';
part 'membership_bloc.freezed.dart';

@injectable
class MembershipBloc extends Bloc<MembershipEvent, MembershipState> {
  IMembershipFacade iMembershipFacade;
  MembershipBloc(this.iMembershipFacade) : super(_Initial());

  @override
  Stream<MembershipState> mapEventToState(
    MembershipEvent event,
  ) async* {
    yield* event.map(
      started: (e) {},
      getMembershipList: (e) async* {
        yield MembershipState.loading();
        try {
          final _result = await iMembershipFacade.getMembershipData();

          yield MembershipState.onGetMemberList(onData: _result);
        } catch (e) {
          yield MembershipState.error(e.toString());
        }
      },
      getMyMembership: (_GetMyMembership value) async* {
        yield MembershipState.loading();
        try {
          final _result = await iMembershipFacade.getMyMembership();

          yield MembershipState.onGetMyMembership(onData: _result);
        } catch (e) {
          yield MembershipState.error(e.toString());
        }
      },
      getMembershipDataById: (_GetMembershipDataById value) async* {
        yield MembershipState.loading();
        try {
          final _result =
              await iMembershipFacade.getMembershipById(value.membershipId);

          yield MembershipState.onGetSingleMembership(
              onSingleMembership: _result);
        } catch (e) {
          yield MembershipState.error(e.toString());
        }
      },
    );
  }
}
