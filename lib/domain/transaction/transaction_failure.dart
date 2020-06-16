

import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_failure.freezed.dart';
@freezed
abstract class TransactionFailure with _$TransactionFailure {
  const factory TransactionFailure.badRequest() = _BadRequest;
  const factory TransactionFailure.serverError() = _ServerError;
  const factory TransactionFailure.notFound() = _NotFound;
  const factory TransactionFailure.noTransaction() = _NoTransaction;
}
