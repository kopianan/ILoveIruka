import 'package:flutter/material.dart';

class ComingSoon extends StatefulWidget {
  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('images/assets/coming_soon.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              "Hi there, Petstagram will available soon.",
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}
