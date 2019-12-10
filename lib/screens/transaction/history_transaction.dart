import 'package:flutter/material.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/model/transaction_history_detail_model.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HistoryTransaction extends StatefulWidget {
  static const String route = "/history_transaction";
  HistoryTransaction({Key key}) : super(key: key);

  @override
  _HistoryTransactionState createState() => _HistoryTransactionState();
}

class _HistoryTransactionState extends State<HistoryTransaction> {
  Repository _repository = Repository();

  var dateStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: Colors.black);
  var amountStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black);
  var pointPlusStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green);
  var pointMinusStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red);
  var future;
  @override
  void initState() {
    future = _repository.getHistoryTransaction(
        Provider.of<DataBridge>(context, listen: false).getUserData().user.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<DataBridge>(
        builder: (context, dataBridge, _) => SafeArea(
          child: FutureBuilder(
              future: future,
              builder: (context,AsyncSnapshot<List<TransactionHistoryDetailModel>> snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    // TODO: Handle this case.
                    break;
                  case ConnectionState.waiting:
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                    break;
                  case ConnectionState.active:
                    // TODO: Handle this case.
                    break;
                  case ConnectionState.done:
                    if (snapshot.hasError) {
                    } else {
                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return CardHistoryTransaction(
                                  historyTransaction: snapshot.data[index],
                                    dateStyle: dateStyle,
                                    amountStyle: amountStyle,
                                    pointPlusStyle: pointPlusStyle);
                              }));
                    }
                    break;
                }
                return Container(); 
              }),
        ),
      ),
    );
  }
}

class CardHistoryTransaction extends StatelessWidget {
  const CardHistoryTransaction({
    Key key,
    @required this.dateStyle,
    @required this.amountStyle,
    @required this.pointPlusStyle,
    @required this.historyTransaction
  }) : super(key: key);

  final TextStyle dateStyle;
  final TextStyle amountStyle;
  final TextStyle pointPlusStyle;
  final TransactionHistoryDetailModel historyTransaction ; 
  @override
  Widget build(BuildContext context) {
    // print(DateFormat("dd","").format(DateTime.parse(DateTi))) ; 
    return Card(
      color: Colors.grey[300],
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "asdf",
                      style: dateStyle,
                    ),
                    Text(
                      "Dec 19",
                      style: dateStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.only(left: 12),
                child: Text(
                  historyTransaction.subTotal.toString(),
                  style: amountStyle,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Text(
                  "+${historyTransaction.earnedPoint}",
                  style: pointPlusStyle,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
