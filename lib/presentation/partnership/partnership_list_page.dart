import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/presentation/partnership/partnership_location_page.dart';

class PartnershipListPage extends StatefulWidget {
  static final String TAG = '/partnership_list_page';
  @override
  _PartnershipListPageState createState() => _PartnershipListPageState();
}

class _PartnershipListPageState extends State<PartnershipListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Get.toNamed(PartnershipLocationPage.TAG);
            },
          )
        ],
      ),
      body: Container(child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("TEST"),
          );
        },
      )),
    );
  }
}
