
import 'package:flutter/material.dart';

class BuildSocialMediaIcon extends StatelessWidget {
  const BuildSocialMediaIcon(
      {Key key, @required this.title, this.imageAsset, this.onIconPressed})
      : super(key: key);
  final String title;
  final String imageAsset;
  final Function onIconPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onIconPressed();
      },
      child: Column(
        children: <Widget>[
          Container(
            width: 40,
            // decoration: DecorationCollection().boxDecorationDashboardIcon(),
            height: 40,
            child: Image.asset(imageAsset),
          ),
          Container(
              alignment: Alignment.topCenter,
              width: 70,
              child: Text(
                "${title}",
                maxLines: 2,
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}