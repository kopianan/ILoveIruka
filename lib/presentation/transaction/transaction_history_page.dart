import 'dart:math';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/transaction/bloc/transaction_bloc.dart';
import 'package:i_love_iruka/application/transaction/transaction_controller.dart';
import 'package:i_love_iruka/domain/transaction_data/transaction/transaction_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_formatter.dart';

import '../../injection.dart';
import 'transaction_detail_page.dart';

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
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Transaction History",
        ),
        backgroundColor: Colors.transparent,
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<TransactionBloc>()..add(TransactionEvent.getTransactions()),
        child: BlocConsumer<TransactionBloc, TransactionState>(
            listener: (context, state) {
          state.maybeMap(
            orElse: () {},
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
        }, builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return loadingTranscationPage();
            },
            loading: (e) {
              return loadingTranscationPage();
            },
            onGetTransaction: (e) {
              if (e.data.items.length == 0) {
                return noTransactionPage();
              }
              return defaultTransactionPage();
            },
          );
        }),
      ),
    );
  }

  Widget loadingTranscationPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Getting transaction data ...",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget noTransactionPage() {
    return Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.history_edu_sharp,
              size: 80,
              color: Colors.grey,
            ),
            Text(
              "No Transaction",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
              ),
            )
          ],
        ));
  }

  Widget defaultTransactionPage() {
    return GetX<TransactionController>(
      builder: (trans) => Stack(
        children: [
          Positioned(
              bottom: -100,
              left: 100,
              right: -150,
              child: Image.asset(
                'images/assets/iruka_cloud.png',
                width: 300,
              )),
          CustomScrollView(
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
        ],
      ),
    );
  }
}

class TransactionItem extends StatefulWidget {
  const TransactionItem({Key key, @required this.trans}) : super(key: key);
  final TransactionDataModel trans;

  @override
  _TransactionItemState createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  List<Color> colorList = [
    Color(0xFF34C7CC),
    Color(0xFFC6E052),
    Color(0xFF6AE46A),
    Color(0xFFFAA6FD),
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(TransactionDetailPage.TAG, arguments: widget.trans);
      },
      child: Container(
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
                color: colorList[Random().nextInt(3)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getDateFromLocale(widget.trans.createdAt).toString(),
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    getMonthFromLocale(widget.trans.createdAt).toString(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
                      widget.trans.transactionNumber,
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    widget.trans.remark,
                    maxLines: 2,
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  NumberFormat.currency(symbol: "IDR ", decimalDigits: 0)
                      .format(widget.trans.total),
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
