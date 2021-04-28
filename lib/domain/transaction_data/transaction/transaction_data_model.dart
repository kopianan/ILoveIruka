import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/transaction_data/coupon/coupont_data_model.dart';
import 'package:i_love_iruka/domain/transaction_data/detail/transaction_menu_detail_data_model.dart';

part 'transaction_data_model.freezed.dart';
part 'transaction_data_model.g.dart';

@freezed
abstract class TransactionDataModel with _$TransactionDataModel {
  factory TransactionDataModel(
      {String id,
      String transactionNumber,
      double total,
      String formattedTotal,
      String formattedTotalInSale,
      double totalInSale,
      @JsonKey(nullable: true, includeIfNull: true) CoupontDataModel coupon,
      String remark,
      String createdBy,
      String createdAt,
      List<TransactionMenuDetailDataModel> details}) = _TransactionDataModel;

  factory TransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataModelFromJson(json);
}
 