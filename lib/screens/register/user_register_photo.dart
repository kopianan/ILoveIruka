import 'dart:io';

import 'package:flutter/material.dart';
import 'package:i_love_iruka/util/camera_util.dart';
import 'register_additional.dart';

class UserRegisterPhoto extends StatefulWidget {
  const UserRegisterPhoto({
    Key key,
    @required String firstName,
    @required RegisterAdditional registerAdditional,
    @required this.context,
    @required this.c,
  })  : _firstName = firstName,
        _registerAdditional = registerAdditional,
        super(key: key);

  final String _firstName;
  final RegisterAdditional _registerAdditional;
  final BuildContext context;
  final ScrollController c;

  @override
  _UserRegisterPhotoState createState() => _UserRegisterPhotoState();
}

class _UserRegisterPhotoState extends State<UserRegisterPhoto> {
  File photo;
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
                "Hi, ${widget._firstName}\nPlease Add Your Photo",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child: (photo == null)
                      ? Icon(
                          Icons.image,
                          size: 80,
                        )
                      : Image.file(
                          photo,
                          fit: BoxFit.cover,
                        ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Color(0xffd45500),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Take Photo",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  bool takePhotoSource = false;
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Choose Action Photo"),
                          content: Text("Please choose action to take pictrue"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {
                                takePhotoSource = true;
                                CameraUtil()
                                    .takePicture(fromCamera: takePhotoSource)
                                    .then((onValue) {
                                  setState(() {
                                    photo = File(onValue.toString());
                                  });
                                });
                                  Navigator.pop(context); 
                              },
                              child: Text("Camera"),
                            ),
                            FlatButton(
                              onPressed: () {
                                takePhotoSource = false;
                                CameraUtil()
                                    .takePicture(fromCamera: takePhotoSource)
                                    .then((onValue) {
                                  setState(() {
                                    photo = File(onValue.toString());
                                  });
                                });
                                
                      Navigator.pop(context); 
                              },
                              child: Text("Gallery"),
                            )
                          ],
                        );
                      });
                },
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
                  widget._registerAdditional.backAnimated(context, widget.c, 1);
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
