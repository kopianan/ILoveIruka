import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/feed_home/menu_data_model.dart';

part 'transaction_menu_detail_data_model.freezed.dart';
part 'transaction_menu_detail_data_model.g.dart';

@freezed
abstract class TransactionMenuDetailDataModel
    with _$TransactionMenuDetailDataModel {
  factory TransactionMenuDetailDataModel(
      {int qty,
      int price,
      List<MenuDataModel> product,
      String id}) = _TransactionMenuDetailDataModel;

  factory TransactionMenuDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionMenuDetailDataModelFromJson(json);
}
