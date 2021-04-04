import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/transaction_data/i_transaction_facade.dart';
import 'package:i_love_iruka/domain/transaction_data/transaction/transaction_data_model.dart';
import 'package:i_love_iruka/domain/transaction_data/transaction_response_data.dart';
import 'package:injectable/injectable.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(this._iTransactionFacade) : super(_Initial());
  ITransactionFacade _iTransactionFacade;
  @override
  Stream<TransactionState> mapEventToState(
    TransactionEvent event,
  ) async* {
    yield* event.map(
      started: (e) {},
      getTransactions: (e) async* {
        yield TransactionState.loading();
        final _result = await _iTransactionFacade.getTransaction("userId");
        yield _result.fold(
          (l) => TransactionState.error(l),
          (r) => TransactionState.onGetTransaction(r),
        );
      },
    );
  }
}
