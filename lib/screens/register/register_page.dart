import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  static const double distanceOfElement = 15.0 ; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.photo_camera,
                      size: 60,
                    ),
                  )),
              SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: TextFormField(
                              decoration:
                                  InputDecoration(hintText: "First Name")),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: TextFormField(
                              decoration:
                                  InputDecoration(hintText: "Last Name")),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: distanceOfElement,),
                  TextFormField(
                      decoration: InputDecoration(hintText: " Email Address", labelText: "Email address")),
                       SizedBox(height: distanceOfElement,),
                  TextFormField(
                      decoration: InputDecoration(hintText: "Username")),
                       SizedBox(height: distanceOfElement,),
                  TextFormField(
                      decoration: InputDecoration(hintText: "Password")),
                       SizedBox(height: distanceOfElement,),
                  TextFormField(
                      decoration: InputDecoration(hintText: "Repeat Password")),
                       SizedBox(height: distanceOfElement,),
                  DropdownButton(
                    isExpanded: true,
                    hint: Text("Hint Text"),
                  ),
                   SizedBox(height: distanceOfElement,),
                  
                ],
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: RaisedButton(
                  color: Colors.white,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {},
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      side: BorderSide(color: Colors.blue)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.check_circle),
                      Text(
                        "SIGN UP",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Container buildInputDropDown(String label) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 30.0,
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          new Expanded(
            child: DropdownButton(
              hint: Text("Category"),
            ),
          )
        ],
      ),
    );
  }

  Container buildInputTextField(String label) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 30.0,
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          new Expanded(
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: '$label',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
