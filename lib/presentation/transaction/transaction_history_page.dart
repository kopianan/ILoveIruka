import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/transaction/bloc/transaction_bloc.dart';
import 'package:i_love_iruka/application/transaction/transaction_controller.dart';
import 'package:i_love_iruka/domain/transaction_data/transaction/transaction_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_formatter.dart';

import '../../injection.dart';

class TransactionHistoryPage extends StatefulWidget {
  static final String TAG = '/transaction_history_page';
  @override
  _TransactionHistoryPageState createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  final transController = Get.put(TransactionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<TransactionBloc>()
          ..add(TransactionEvent.getTransactions("userId")),
        child: BlocConsumer<TransactionBloc, TransactionState>(
          listener: (context, state) {
            state.map(
              initial: (e) {
                print("Initial");
              },
              loading: (e) {
                print("loading");
              },
              error: (e) {
                print("error");
              },
              onGetTransaction: (e) {
                transController.setTransactionsData(e.data.items);
              },
            );
          },
          builder: (context, state) {
            return SafeArea(
              child: GetX<TransactionController>(
                builder: (trans) => CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: trans.getTransactionDataList.length,
                            itemBuilder: (context, index) => TransactionItem(
                                  trans: trans.getTransactionDataList[index],
                                )))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key key, @required this.trans}) : super(key: key);
  final TransactionDataModel trans;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200], blurRadius: 3, offset: Offset(3, 3))
          ]),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue[100],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "10",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Mar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Text(
                    trans.transactionNumber,
                    maxLines: 1,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  trans.remark,
                  maxLines: 2,
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                trans.total.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
