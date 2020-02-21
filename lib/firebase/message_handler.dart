import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class MessageHandler extends StatefulWidget {
  MessageHandler({Key key}) : super(key: key);

  @override
  _MessageHandlerState createState() => _MessageHandlerState();
}

class _MessageHandlerState extends State<MessageHandler> {
  final FirebaseMessaging _fcm = FirebaseMessaging() ; 
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text(''),
    );
  }
}