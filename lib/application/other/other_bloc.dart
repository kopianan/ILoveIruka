import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/other/i_other_facade.dart';
import 'package:i_love_iruka/domain/other/raja_ongkir.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'other_event.dart';
part 'other_state.dart';
part 'other_bloc.freezed.dart';

@injectable
class OtherBloc extends Bloc<OtherEvent, OtherState> {
  IOtherFacade _iOtherFacade;
  OtherBloc(this._iOtherFacade);
  @override
  OtherState get initialState => OtherState.initial();

  @override
  Stream<OtherState> mapEventToState(
    OtherEvent event,
  ) async* {
    yield* event.map(
      getProvinceOnly: (e) async* {
        yield OtherState.getProvinceOption(
            getProvinceOption: none(), isLoading: true);
        final _reulst = await _iOtherFacade.getProvince();
        yield OtherState.getProvinceOption(
            getProvinceOption: some(_reulst), isLoading: false);
      },
      getCityOnly: (e) async* {
        yield OtherState.getCityOption(getCityOption: none(), isLoading: true);
        final _result = await _iOtherFacade.getCity(e.provinceId);

        yield OtherState.getCityOption(
            getCityOption: some(_result), isLoading: false);
      },
    );
  }
}
