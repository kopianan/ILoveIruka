import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/transaction/i_transaction_facade.dart';
import 'package:i_love_iruka/domain/transaction/transaction_failure.dart';
import 'package:i_love_iruka/domain/transaction/transaction_r.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final ITransactionFacade _iTransactionFacade;
  TransactionBloc(this._iTransactionFacade);
  @override
  TransactionState get initialState => TransactionState.initial();

  @override
  Stream<TransactionState> mapEventToState(
    TransactionEvent event,
  ) async* {
    yield* event.map(
      getPointAndLastTrans: (e) async* {
        yield TransactionState.onProgress();
        final _result =
            await _iTransactionFacade.getPointAndLastTrans(e.userId);
        yield TransactionState.onGetPointOption(some(_result));
      },
      getAllTransaction: (e) async* {},
    );
  }
}
