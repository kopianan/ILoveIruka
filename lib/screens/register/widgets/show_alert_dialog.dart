
import 'package:flutter/material.dart';
import 'package:i_love_iruka/util/common.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({
    Key key,
    String link,
    String phone,
    @required String title,
    @required String content,
  })  : _link = link,
        _phone = phone,
        _content = content,
        _title = title,
        super(key: key);
  final String _link;
  final String _phone;
  final String _title;
  final String _content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("$_title"),
      content: Text("$_content"),
      actions: <Widget>[
        (_link != null)
            ? FlatButton(
                child: Text("Visit Link"),
                onPressed: () {
                  Common.launchURL("$_link");
                },
              )
            : Container(),
        (_phone != null)
            ? FlatButton(
                child: Text("Call"),
                onPressed: () {
                  launch("tel://$_phone");
                },
              )
            : Container(),
      ],
    );
  }
}
