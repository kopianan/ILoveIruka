import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key key, this.action, @required this.title})
      : super(key: key);
  final List<Widget> action;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.18, //250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60)),
          color: Colors.lightBlue[700], //Colors.indigo[400],
        ),
        child: SafeArea(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  (action == null)
                      ? Row(
                          children: <Widget>[],
                        )
                      : Row(
                          children: action,
                        )
                ],
              )),
        ),
      ),
    );
  }
}
