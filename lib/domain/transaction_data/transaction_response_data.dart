import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/transaction_data/detail/transaction_menu_detail_data_model.dart';
import 'package:i_love_iruka/domain/transaction_data/transaction/transaction_data_model.dart';

part 'transaction_response_data.freezed.dart';
part 'transaction_response_data.g.dart';

@freezed
abstract class TransactionResponseData with _$TransactionResponseData {
  factory TransactionResponseData(List<TransactionDataModel> items) =
      _TransactionResponseData;

  factory TransactionResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseDataFromJson(json);
}
