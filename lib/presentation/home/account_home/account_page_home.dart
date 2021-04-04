import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/presentation/home/account_home/partnership_location_page.dart';
import 'package:i_love_iruka/presentation/membership/membership_card_list.dart';
import 'package:i_love_iruka/presentation/transaction/transaction_history_page.dart';

class AccountPagehome extends StatefulWidget {
  @override
  _AccountPagehomeState createState() => _AccountPagehomeState();
}

class _AccountPagehomeState extends State<AccountPagehome>
    with AutomaticKeepAliveClientMixin<AccountPagehome> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  final userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My Account",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54)),
                Icon(Icons.info)
              ],
            ),
          )),
          SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SilverCard(
                    cardNumber: "123",
                    name: userController.getUserData().fullName,
                    validUntil: '20/10',
                  ))),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 15, bottom: 15, right: 15),
              padding: EdgeInsets.all(15),
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset.fromDirection(45, 2))
                  ],
                  image: DecorationImage(
                      image: AssetImage('images/assets/point_background.jpg'),
                      fit: BoxFit.cover)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Points",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.money,
                        color: Colors.black38,
                        size: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "200",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Membership Program",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      buildMembershipMenuItem(
                        Icon(Icons.credit_card, color: Colors.blue[600]),
                        "Membership Type",
                        "Upgrade your membership for more benefits",
                        () {
                          Get.toNamed(MembershipCardListPage.TAG);
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildMembershipMenuItem(
                        Icon(
                          Icons.history,
                          color: Colors.yellow[800],
                        ),
                        "My History Transaction",
                        "See your recently transaction",
                        () {
                          Get.toNamed(TransactionHistoryPage.TAG);
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildMembershipMenuItem(
                        Icon(
                          Icons.location_on,
                          color: Colors.red[800],
                        ),
                        "Partnership",
                        "Find Iruka Partnership arround the world",
                        () {
                          Get.toNamed(PartnershipLocationPage.TAG);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell buildMembershipMenuItem(
      Icon icon, String title, String description, Function onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 4,
                  spreadRadius: 2,
                  offset: Offset.fromDirection(45, 5))
            ]),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: FittedBox(
                child: Container(
                  alignment: Alignment.center,
                  child: icon,
                  //  Icon(Icons.credit_card_rounded,
                  //     color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 4,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      description,
                      // "Upgrade your membership for more benefits."
                    ),
                  ]),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text("More", textAlign: TextAlign.end),
              ),
            )
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (context) => getIt<TransactionBloc>()
  //       ..add(TransactionEvent.getPointAndLastTrans(
  //           userId: GetPointAndLastTransRequest(
  //               id: _authController.getUserData().id))),
  //     child: BlocBuilder<TransactionBloc, TransactionState>(
  //         builder: (context, state) {
  //       return state.maybeWhen(
  //           orElse: () => FullLoadingPage(),
  //           onProgress: () => FullLoadingPage(),
  //           onGetPointOption: (e) => e.fold(
  //               () => FullLoadingPage(),
  //               (a) => a.fold(
  //                     (l) => FullLoadingPage(),
  //                     (r) {
  //                       return _builAccountContent(context, r);
  //                     },
  //                   )));
  //     }),
  //   );
  // }

}

class FullLoadingPage extends StatelessWidget {
  const FullLoadingPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: CircularProgressIndicator()),
    );
  }
}

class ActivitiesComponent extends StatelessWidget {
  const ActivitiesComponent({
    Key key,
    @required this.transDate,
    @required this.transType,
    @required this.total,
    @required this.earnedPoint,
  }) : super(key: key);
  final String transType;
  final String transDate;
  final String total;
  final int earnedPoint;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffF3F3F3),
      ),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                transType,
                style: TextStyle(color: Color(0xff6A6A6A), fontSize: 16),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                transDate,
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "Rp. $total",
                style: TextStyle(color: Color(0xff6A6A6A), fontSize: 16),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "+ $earnedPoint",
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ],
      ),
    );
  }
}
