import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/models/request/edit_request.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/util/shared_pref.dart';
import 'package:provider/provider.dart';

class GroomerPageProfile extends StatefulWidget {
  static const String page_name = "/groomer_page_profile";
  GroomerPageProfile({Key key}) : super(key: key);

  @override
  _GroomerPageProfileState createState() => _GroomerPageProfileState();
}

class _GroomerPageProfileState extends State<GroomerPageProfile> {
  Repository changeUserStatus = Repository();
  bool actve = false;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<DataBridge>(builder: (context, dataBridge, _) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Groomer Page ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: SwitchListTile(
                subtitle: Text("Show or hide On Groomer List"),
                title: Text("Status"),
                value: dataBridge.getUserData().user.show,
                onChanged: (val) {
                  final _currUserData = dataBridge.getUserData();

                  changeUserStatus
                      .changeUserStatus(dataBridge.getUserData().user.id, val)
                      .then((onValue) {
                    print(onValue);
                    _currUserData.user.show = val;
                    dataBridge.setUserData(_currUserData);
                    SharedPref().saveLoginData(_currUserData);
                  });
                },
              )),
              Container(
                child: ListTile(
                  title: Text("Description"),
                  subtitle: Text(
                    "${dataBridge.getUserData().user.description.toString()}",
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(
                    "Edit",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    controller.text = dataBridge.getUserData().user.description;
                    showModalBottomSheet(
                        context: (context),
                        builder: (context) {
                          return Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                      child: Text("Edit Description",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Divider(
                                      height: 20,
                                    ),
                                    Container(
                                      child: TextField(
                                        controller: controller,
                                        maxLines: 8,
                                        minLines: 4,
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Container(
                                      width: double.infinity,
                                      child: RaisedButton(
                                        color: Color(0xffd45500),
                                        onPressed: () {
                                          final currentUserData =
                                              dataBridge.getUserData();

                                          final reg = EditRequest(
                                              accessKey:
                                                  "d78c1a5c-ccbe-4c26-ac08-43ed66c8afb9",
                                              name: currentUserData.user.name
                                                  .toString(),
                                              phonenumber: currentUserData
                                                  .user.phoneNumber
                                                  .toString(),
                                              address: currentUserData
                                                  .user.address
                                                  .toString(),
                                              description:
                                                  controller.text.toString(),
                                              pic: currentUserData.user.pIC
                                                  .toString(),
                                              id: dataBridge
                                                  .getUserData()
                                                  .user
                                                  .id
                                                  .toString(),
                                              file: null);
                                          changeUserStatus
                                              .editUser(reg)
                                              .then((onValue) {
                                            dataBridge.setUserData(onValue);
                                            Fluttertoast.showToast(
                                                msg: "Profile Edited");
                                                
                                            Navigator.of(context).pop();
                                            SharedPref().saveLoginData(onValue);
                                          });
                                        },
                                        child: Text("Submit",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    )
                                  ],
                                ),
                              ));
                        });
                  },
                ),
              )
            ]),
          ),
        ),
      );
    });
  }
}
