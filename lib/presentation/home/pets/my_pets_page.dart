import 'package:flutter/material.dart';

class MyPetsPage extends StatefulWidget {
  static final String TAG = '/my_pets_page';
  MyPetsPage({Key key}) : super(key: key);

  @override
  _MyPetsPageState createState() => _MyPetsPageState();
}

class _MyPetsPageState extends State<MyPetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Pets",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add_sharp,
                          size: 30,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
            ), 
            
          ],
        ),
      ),
    );
  }
}
