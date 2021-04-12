import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:i_love_iruka/application/membership/membership_bloc.dart';
import 'package:i_love_iruka/domain/membership/membership_data_model.dart';
import 'package:i_love_iruka/presentation/widgets/member_card.dart';

import '../../injection.dart';

class MembershipCardListPage extends StatefulWidget {
  static const String TAG = "/membership_card_list_page";
  MembershipCardListPage({Key key}) : super(key: key);

  @override
  _MembershipCardListPageState createState() => _MembershipCardListPageState();
}

class _MembershipCardListPageState extends State<MembershipCardListPage> {
  List<Widget> cardList = [
    SilverCard(),
    GoldCard(),
    PlatinumCard(),
  ];

  PageController _pageController = PageController();
  CarouselController _carouselController = CarouselController();
  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Member List"),
          elevation: 0,
        ),
        body: BlocProvider(
          create: (context) =>
              getIt<MembershipBloc>()..add(MembershipEvent.getMembershipList()),
          child: BlocConsumer<MembershipBloc, MembershipState>(
              listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              onGetMemberList: (e) {
                print("TEST");
                print(e);
                e.onData.fold(
                  (l) => print(l),
                  (r) => print(r),
                );
              },
            );
          }, builder: (context, state) {
            return state.maybeMap(
                orElse: () => Container(),
                onGetMemberList: (e) {
                  return e.onData.fold(
                    (l) => Container(child: Text("NONE")),
                    (r) => OnDataMembership(
                        list: r,
                        carouselController: _carouselController,
                        cardList: cardList,
                        pageController: _pageController),
                  );
                },
                loading: (e) {
                  return Container(
                      child: Center(
                    child: CircularProgressIndicator(),
                  ));
                });
          }),
        ));
  }
}

class OnDataMembership extends StatelessWidget {
  const OnDataMembership({
    Key key,
    @required CarouselController carouselController,
    @required this.cardList,
    @required this.list,
    @required PageController pageController,
  })  : _carouselController = carouselController,
        _pageController = pageController,
        super(key: key);
  final List<MembershipDataModel> list;
  final CarouselController _carouselController;
  final List<Widget> cardList;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CarouselSlider(
              carouselController: _carouselController,
              items: list.map((e) => cardList[Random().nextInt(3)]).toList(),
              options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    _pageController.animateToPage(index,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                  enlargeCenterPage: false,
                  autoPlay: false,
                  height: 190,
                  enableInfiniteScroll: false),
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return MemberDescription(
                  membershipDataModel: list[index],
                );
              },
              onPageChanged: (page) {
                _carouselController.animateToPage(page);
                // _carouselController.jumpToPage(page);
              },
              controller: _pageController,
            ),
          ),
        ],
      ),
    );
  }
}

class MemberDescription extends StatelessWidget {
  const MemberDescription({Key key, @required this.membershipDataModel})
      : super(key: key);

  final MembershipDataModel membershipDataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(3, 3))
                ]),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        membershipDataModel.label,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Duration For " +
                            (membershipDataModel.duration / 30)
                                .toStringAsFixed(0) +
                            "Month",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFFFF6A6A),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Text(
                        "Upgrade",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.upgrade,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Html(data: membershipDataModel.description),
        ],
      ),
    );
  }
}

class PlatinumCard extends StatelessWidget {
  const PlatinumCard(
      {Key key,
      this.cardNumber = "123456789",
      this.name: "NAME XXXX",
      this.validUntil: "XX/XX"})
      : super(
          key: key,
        );
  final String cardNumber;
  final String name;
  final String validUntil;

  @override
  Widget build(BuildContext context) {
    return MemberCard(
      textColor: Color(0xFF898989),
      frontColor: [
        Color(0xff35393f),
        Color(0xff68737f),
        Color(0xff1e2022),
      ],
      backCardColor: [
        Color(0xff35393f),
        Color(0xff68737f),
        Color(0xff1e2022),
      ],
      // backgroundColor: Colors.blue[600],
      backgroundColor: Color(0xff35393f),
      backNumber: cardNumber,
      name: name,
      validUntil: validUntil,
      type: "Silver VIP",
    );
  }
}

class GoldCard extends StatelessWidget {
  const GoldCard(
      {Key key,
      this.cardNumber = "123",
      this.name: "nama",
      this.validUntil: "20/10"})
      : super(key: key);
  final String cardNumber;
  final String name;
  final String validUntil;
  @override
  Widget build(BuildContext context) {
    return MemberCard(
      frontColor: [
        Color(0xffFFD700),
        Color(0xffDAA520),
        Color(0xffF0E68C),
      ],
      textColor: Color(0xFFEFA700),
      backCardColor: [
        Color(0xffFFD700),
        Color(0xffDAA520),
        Color(0xffF0E68C),
      ],
      // backgroundColor: Colors.blue[600],
      backgroundColor: Color(0xFFF1D900),
      backNumber: cardNumber,
      name: name,
      validUntil: validUntil,
      type: "Silver VIP",
    );
  }
}

class SilverCard extends StatelessWidget {
  const SilverCard(
      {Key key,
      this.cardNumber = "123",
      this.name: "nama",
      this.cardType: "VIP",
      this.validUntil: "20/10"})
      : super(key: key);
  final String cardNumber;
  final String name;
  final String cardType;
  final String validUntil;
  @override
  Widget build(BuildContext context) {
    return MemberCard(
      frontColor: [Colors.blue[500], Colors.blue[300], Colors.blue[800]],
      textColor: Color(0xFF0D5CAB),
      backCardColor: [Colors.blue[500], Colors.blue[300], Colors.blue[800]],
      // backgroundColor: Colors.blue[600],
      backgroundColor: Color(0xFF1E78FF),
      backNumber: cardNumber,
      name: name,
      validUntil: validUntil,
      type: cardType,
    );
  }
}
//  Color(0xffFFD700),
// Color(0xffDAA520),
// Color(0xffF0E68C),

//            Colors.blue[500],
//           Colors.blue[300],
//           Colors.blue[800]

// Color(0xff35393f),
// Color(0xff68737f),
// Color(0xff1e2022),
