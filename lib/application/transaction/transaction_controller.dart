import 'package:get/get.dart';
import 'package:i_love_iruka/domain/transaction_data/detail/transaction_menu_detail_data_model.dart';
import 'package:i_love_iruka/domain/transaction_data/transaction/transaction_data_model.dart';

class TransactionController extends GetxController {
  final transaction = <TransactionDataModel>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void setTransactionsData(List<TransactionDataModel> listData) {
    this.transaction.assignAll(listData);
  }

  List<TransactionDataModel> get getTransactionDataList => this.transaction;
}
