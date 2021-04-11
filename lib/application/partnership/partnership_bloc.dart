import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/partnership/i_partnership_facade.dart';
import 'package:i_love_iruka/domain/partnership/partnership_data_model.dart';
import 'package:injectable/injectable.dart';

part 'partnership_event.dart';
part 'partnership_state.dart';
part 'partnership_bloc.freezed.dart';

@injectable
class PartnershipBloc extends Bloc<PartnershipEvent, PartnershipState> {
  PartnershipBloc(this._iPartnershipFacade) : super(_Initial());
  IPartnershipFacade _iPartnershipFacade;

  @override
  Stream<PartnershipState> mapEventToState(
    PartnershipEvent event,
  ) async* {
    yield* event.map(getPartnersList: (val) async* {
      yield PartnershipState.loading();
      try {
        final _result = await _iPartnershipFacade.getAllPartnership();
        yield PartnershipState.onGetParternData(_result);
      } catch (e) {
        yield PartnershipState.error(e.toString());
      }
    });
  }
}
