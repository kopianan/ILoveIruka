import 'package:flutter/material.dart';
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  static const String id = "/edit_profile";

  EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _dateController ;
  TextEditingController _nameController;
  TextEditingController _addressController;

  SharedPref sharedPref = SharedPref();
  User dataLogin;
  @override
  void initState() {
    dataLogin = Provider.of<DataBridge>(context, listen: false).getUserData().user;
    _nameController = TextEditingController(text: dataLogin.name.toString()) ; 
    _addressController = TextEditingController(text: dataLogin.address.toString()); 
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String name;
  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(
      builder: (context, dataBridge, _) {
        return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          label: Text("Save"),
          icon: Icon(
            Icons.save,
          ),
          onPressed: () {},
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: Column(children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Profile",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 50),
            new ChangeProfilePicture(picture : dataLogin.picture),
            SizedBox(height: 30),
            new InformationItem(name: "Nama", hint: "Input your name",controller: _nameController,),
            new InformationItem(
                name: "Alamat", hint: "Input your Address", maxLines: 2, controller: _addressController),
            new InformationDate(
              name: "Birth Of Date",
              hint: "Input your birth of date",
              dateController: _dateController,
            ),
            new InformationItem(
              name: "Gender",
              hint: "Choose your gender",
            ),
          ]),
        ),
      );}
    );
  }
}

class InformationDate extends StatefulWidget {
  const InformationDate(
      {Key key,
      @required this.name,
      @required this.hint,
      @required this.dateController})
      : super(key: key);
  final String hint;
  final String name;
  final TextEditingController dateController;

  @override
  _InformationDateState createState() => _InformationDateState();
}

class _InformationDateState extends State<InformationDate> {
  DateTime selectedDate;
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime(2015, 8),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        widget.dateController.text = selectedDate.toIso8601String();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(flex: 3, child: Text("${widget.name}")),
            Expanded(
                flex: 7,
                child: TextField(
                  onTap: () {
                    _selectDate(context);
                  },
                  controller: widget.dateController,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hint,
                  ),
                )),
          ],
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}

class InformationItem extends StatelessWidget {
  const InformationItem(
      {Key key, @required this.name, @required this.hint, this.maxLines = 1,  this.controller})
      : super(key: key);
  final String hint;
  final String name;
  final int maxLines;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(flex: 3, child: Text("$name")),
            Expanded(
                flex: 7,
                child: TextField(
                  controller: controller,
                  onTap: () {},
                  textAlign: TextAlign.end,
                  minLines: maxLines,
                  maxLines: maxLines,
                  decoration:
                      InputDecoration(border: InputBorder.none, hintText: hint),
                )),
          ],
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}

class ChangeProfilePicture extends StatelessWidget {
  const ChangeProfilePicture({
    @required this.picture,
    Key key,
  }) : super(key: key);
  final String picture; 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(Constants.getWebUrl()+ "$picture"),
                fit: BoxFit.fill,
              )),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 40,
            child: Icon(Icons.image, color: Colors.white),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle,
                color: Colors.amber),
          ),
        )
      ],
    );
  }
}
