import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/auth_controller.dart';
import 'package:i_love_iruka/application/transaction/transaction_bloc.dart';
import 'package:i_love_iruka/domain/transaction/transaction_r.dart';
import 'package:i_love_iruka/infrastructure/core/local_storage.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/account/account_page.dart';
import 'package:i_love_iruka/presentation/auth/sign_in_form/sign_in_form.dart';
import 'package:i_love_iruka/presentation/home/account_home/partnership_location_page.dart';
import 'package:i_love_iruka/presentation/splah_screen/splash_screen.dart';
import 'package:i_love_iruka/presentation/welcome/welcome_screen.dart';
import 'package:i_love_iruka/presentation/widgets/member_card.dart';
import 'package:i_love_iruka/util/color_col.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class AccountPagehome extends StatefulWidget {
  @override
  _AccountPagehomeState createState() => _AccountPagehomeState();
}

class _AccountPagehomeState extends State<AccountPagehome>
    with AutomaticKeepAliveClientMixin<AccountPagehome> {
  @override
  bool get wantKeepAlive => true;
  AuthController _authController;

  @override
  void initState() {
    _authController = Get.put(AuthController());
    print(_authController.getUserData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _buildCard(
                config: CustomConfig(
                  colors: [
                    Colors.white70,
                    Colors.white54,
                    Colors.white30,
                    Colors.white24,
                  ],
                  durations: [32000, 21000, 18000, 5000],
                  heightPercentages: [0.25, 0.26, 0.28, 0.31],
                ),
                backgroundColor: Colors.blue[600]),
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
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      buildMembershipMenuItem(
                        Icon(Icons.credit_card, color: Colors.blue[600]),
                        "Membership Type",
                        "Upgrade your membership for more benefits",
                        () {},
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
                        () {},
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

  _buildCard({
    Config config,
    Color backgroundColor = Colors.transparent,
    DecorationImage backgroundImage,
    double height = 220.0,
  }) {
    return Container(
      height: height,
      width: double.infinity,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Stack(
          children: [
            WaveWidget(
              config: config,
              backgroundColor: backgroundColor,
              backgroundImage: backgroundImage,
              size: Size(double.infinity, double.infinity),
              waveAmplitude: 0,
            ),
            Text("DLFJ")
          ],
        ),
      ),
    );
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

  Widget _builAccountContent(
      BuildContext context, GetPointAndLastTransResponse data) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xffF6F6F6),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff1988E7), Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Container(
                margin: EdgeInsets.only(top: 100, right: 20, left: 20),
                child: MemberCard(
                  name: _authController.getUserData().name,
                  point: data.customerPoints.toString(),
                  cardBottomGradient: ColorCol.blueCardBottomGradient,
                  cardTextColor: ColorCol.blueCardText,
                  cardTopGradient: ColorCol.blueCardTopGradient,
                  imagesList: [
                    'blue_clippath1.png',
                    'blue_clippath2.png',
                    'blue_clippath3.png'
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {
                        print("logout");
                        deleteAllData().then((value) {
                          if (value == true)
                            Get.offAllNamed(
                              WelcomeScreen.TAG,
                            );
                          else
                            print("gagal logout");
                        });
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 320,
              ),
              child: Column(
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            height: double.infinity,
                            child: InkWell(
                              onTap: () {
                                Alert(
                                  context: context,
                                  type: AlertType.info,
                                  title: "COMING SOON",
                                  desc:
                                      "Membership program is not available for now.",
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "OK",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                      width: 120,
                                    )
                                  ],
                                ).show();
                              },
                              splashColor: Colors.yellow,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Icon(Icons.wallet_giftcard,
                                        color: Colors.pink),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Membership"),
                                  ]),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            height: double.infinity,
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(AccountPage.TAG);
                              },
                              splashColor: Colors.yellow,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Icon(
                                      Icons.person,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("My Profile"),
                                  ]),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  child: Text(
                                "Recent Activities",
                                style: TextStyle(
                                    color: Color(0xff6A6A6A),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                              Container(
                                  child: Text(
                                "view report",
                                style: TextStyle(color: Colors.blue),
                              )),
                            ],
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          color: Colors.white,
                          elevation: 7,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              child: (data.lastTransaction.customerId == null)
                                  ? Container(
                                      width: double.infinity,
                                      height: 60,
                                      alignment: Alignment.center,
                                      child: Text("No Transaction"),
                                    )
                                  : Column(
                                      children: <Widget>[
                                        ActivitiesComponent(
                                          earnedPoint:
                                              data.lastTransaction.earnedPoint,
                                          total: data.lastTransaction.total
                                              .toString(),
                                          transDate:
                                              data.lastTransaction.createdDate,
                                          transType: data
                                              .lastTransaction.transactionType,
                                        ),
                                      ],
                                    )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
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
