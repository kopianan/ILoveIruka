import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:i_love_iruka/presentation/widgets/member_card.dart';

class MembershipCardListPage extends StatefulWidget {
  static const String TAG = "/membership_card_list_page";
  MembershipCardListPage({Key key}) : super(key: key);

  @override
  _MembershipCardListPageState createState() => _MembershipCardListPageState();
}

class _MembershipCardListPageState extends State<MembershipCardListPage> {
  List<Widget> cardList = [
    // SilverCard(),
    // GoldCard(),
    // PlatinumCard(),
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Member List"),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CarouselSlider(
                  carouselController: _carouselController,
                  items: cardList,
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
                child: PageView(
                  onPageChanged: (page) {
                    _carouselController.animateToPage(page);
                    // _carouselController.jumpToPage(page);
                  },
                  children: [
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.red,
                    ),
                  ],
                  controller: _pageController,
                ),
              ),
            ],
          ),
        )
        // body: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.all(10),
        //     child: Column(
        //       children: [
        //         SilverCard(),
        //         GoldCard(),
        //         PlatinumCard(),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}

// class PlatinumCard extends StatelessWidget {
//   const PlatinumCard(
//       {Key key,
//       this.cardNumber = "123",
//       this.name: "nama",
//       this.validUntil: "20/10"})
//       : super(
//           key: key,
//         );
//   final String cardNumber;
//   final String name;
//   final String validUntil;

//   @override
//   Widget build(BuildContext context) {
//     return MemberCard(
//       textColor: Color(0xFF898989),
//       backCardColor: [
//         Color(0xff35393f),
//         Color(0xff68737f),
//         Color(0xff1e2022),
//       ],
//       // backgroundColor: Colors.blue[600],
//       backgroundColor: Color(0xff35393f),
//       backNumber: cardNumber,
//       name: name,
//       validUntil: validUntil,
//       type: "Silver VIP",
//     );
//   }
// }

// class GoldCard extends StatelessWidget {
//   const GoldCard(
//       {Key key,
//       this.cardNumber = "123",
//       this.name: "nama",
//       this.validUntil: "20/10"})
//       : super(key: key);
//   final String cardNumber;
//   final String name;
//   final String validUntil;
//   @override
//   Widget build(BuildContext context) {
//     return MemberCard(
//       textColor: Color(0xFFEFA700),
//       backCardColor: [
//         Color(0xffFFD700),
//         Color(0xffDAA520),
//         Color(0xffF0E68C),
//       ],
//       // backgroundColor: Colors.blue[600],
//       backgroundColor: Color(0xFFF1D900),
//       backNumber: cardNumber,
//       name: name,
//       validUntil: validUntil,
//       type: "Silver VIP",
//     );
//   }
// }

// class SilverCard extends StatelessWidget {
//   const SilverCard(
//       {Key key,
//       this.cardNumber = "123",
//       this.name: "nama",
//       this.validUntil: "20/10"})
//       : super(key: key);
//   final String cardNumber;
//   final String name;
//   final String validUntil;
//   @override
//   Widget build(BuildContext context) {
//     return MemberCard(
//       textColor: Color(0xFF0D5CAB),
//       backCardColor: [Colors.blue[500], Colors.blue[300], Colors.blue[800]],
//       // backgroundColor: Colors.blue[600],
//       backgroundColor: Color(0xFF1E78FF),
//       backNumber: cardNumber,
//       name: name,
//       validUntil: validUntil,
//       type: "Silver VIP",
//     );
//   }
// }
//  Color(0xffFFD700),
// Color(0xffDAA520),
// Color(0xffF0E68C),

//            Colors.blue[500],
//           Colors.blue[300],
//           Colors.blue[800]

// Color(0xff35393f),
// Color(0xff68737f),
// Color(0xff1e2022),
