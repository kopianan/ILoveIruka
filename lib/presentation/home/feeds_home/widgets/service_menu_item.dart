import 'package:flutter/material.dart';

class ServiceMenuItem extends StatelessWidget {
  const ServiceMenuItem(
      {Key key,
      @required this.assetUrl,
      @required this.name,
      @required this.onClick})
      : super(key: key);

  final String assetUrl;
  final String name;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[200],
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(2,2))
        ],
        borderRadius: BorderRadius.circular(7),
      ),
      child: InkWell(
        onTap: onClick,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: Image.network(
                  assetUrl,
                  errorBuilder: (context, obj, err) {
                    return Image.asset(
                      'images/assets/broken_image.png',
                      fit: BoxFit.cover,
                      width: 1000.0,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height:2,
            ),
            Container(
                padding: EdgeInsets.only(bottom: 4),
                width: double.infinity,
                // constraints: BoxConstraints(maxWidth: 80,),
                alignment: Alignment.topCenter,
                child: Text(
                  name,
                  style: TextStyle(fontSize: 11),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
