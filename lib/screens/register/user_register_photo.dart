import 'package:flutter/material.dart';
import 'register_additional.dart';

class UserRegisterPhoto extends StatelessWidget {
  const UserRegisterPhoto({
    Key key,
    @required String firstName,
    @required RegisterAdditional registerAdditional,
    @required this.context,
    @required this.c,
  }) : _firstName = firstName, _registerAdditional = registerAdditional, super(key: key);

  final String _firstName;
  final RegisterAdditional _registerAdditional;
  final BuildContext context;
  final ScrollController c;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hi, $_firstName\nPlease Upload Your Photo",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey[300],
              child: Icon(
                Icons.image,
                size: 80,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text("Take Photo"),
                onPressed: () {},
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                child: Text("Back"),
                onPressed: () {
                  _registerAdditional.backAnimated(context, c, 1);
                },
              ),
              Container(
                width: 150,
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text("Register"),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}