import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/application/transaction/bloc/transaction_bloc.dart';
import 'package:i_love_iruka/domain/transaction_data/transaction/transaction_data_model.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_formatter.dart';

import '../../injection.dart';

class TransactionDetailPage extends StatefulWidget {
  static final String TAG = '/transaction_detail_page';
  @override
  _TransactionDetailPageState createState() => _TransactionDetailPageState();
}

class _TransactionDetailPageState extends State<TransactionDetailPage> {
  TransactionDataModel transactionDataModel;
  @override
  void initState() {
    transactionDataModel = Get.arguments as TransactionDataModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction Detail"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => getIt<TransactionBloc>(),
        child: BlocConsumer<TransactionBloc, TransactionState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        transactionDataModel.transactionNumber,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(formatStringDateLocale(
                                          transactionDataModel.createdAt))
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFFABF5BB),
                                  ),
                                  // child: Text(
                                  //   "+Point",
                                  //   style: TextStyle(
                                  //     fontSize: 18,
                                  //     fontWeight: FontWeight.bold,
                                  //     color: Color(0xFF02791C),
                                  //   ),
                                  // ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            "Detail",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF007396),
                            ),
                          ),
                          Text(
                            transactionDataModel.remark,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      )),
                      SliverToBoxAdapter(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            SizedBox(height: 20),
                            Text(
                              "Product",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF007396),
                              ),
                            ),
                            ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: transactionDataModel.details.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(12),
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF73FAE3),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              child: Text(
                                                transactionDataModel
                                                    .details[index]
                                                    .product
                                                    .name,
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Row(
                                                children: [
                                                  Text("qty : "),
                                                  Text(transactionDataModel
                                                      .details[index].qty
                                                      .toString())
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Divider()
                                    ],
                                  );
                                }),
                          ])),
                      SliverToBoxAdapter(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                "Sub Total",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                transactionDataModel.formattedTotal,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                "Coupon Applied",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              (transactionDataModel.coupon == null)
                                  ? Text(
                                      "No coupon",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Text(
                                      "-" +
                                          transactionDataModel.coupon.amount
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                            ],
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                transactionDataModel.formattedTotalInSale
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ));
            }),
      ),
    );
  }
}
