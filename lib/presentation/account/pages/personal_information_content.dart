import 'dart:io';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_provider.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:i_love_iruka/domain/core/value_actions.dart';
import 'package:i_love_iruka/domain/core/value_validators.dart';
import 'package:i_love_iruka/infrastructure/auth/update_data.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primarary_blue_loading.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/presentation/widgets/custom_text_field_collection.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:i_love_iruka/util/flushbar_function.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PersonalInformationContent extends StatefulWidget {
  const PersonalInformationContent({Key key, this.authProv}) : super(key: key);

  final AuthProvider authProv;

  @override
  _PersonalInformationContentState createState() =>
      _PersonalInformationContentState();
}

class _PersonalInformationContentState
    extends State<PersonalInformationContent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  TextEditingController _fullNameCon;
  TextEditingController _phoneNumberCon;
  TextEditingController _addressCon;
  TextEditingController _emailCon;

  final _fullNameFN = FocusNode();
  final _phoneNumberFN = FocusNode();
  final _addressFN = FocusNode();
  User user;

  Flushbar flushbar;
  AuthProvider authProv;
  String msg;
  final picker = ImagePicker();
  File _image;

  @override
  void initState() {
    _image = null;
    this.authProv = widget.authProv;
    user = context.read<AuthProvider>().getUserData;
    _fullNameCon = TextEditingController(text: user.name);
    _phoneNumberCon = TextEditingController(text: user.phoneNumber);
    _addressCon = TextEditingController(text: user.address);
    _emailCon = TextEditingController(text: user.email);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showDialogOpenCamera(context);
                },
                child: Container(
                  width: 120,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xff7c94b6),
                      image: new DecorationImage(
                        image: (_image == null)
                            ? (authProv.getUserData.picture == null)
                                ? new ExactAssetImage(
                                    'images/assets/image_placeholder.png')
                                : NetworkImage(Constants.getWebUrl() +
                                    authProv.getUserData.picture)
                            : FileImage(_image),
                        fit: BoxFit.fill,
                      ),
                      border: new Border.all(
                        color: Colors.white,
                        width: 4.0,
                      )),
                  child: Icon(
                    MdiIcons.pencil,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    authProv.getUserData.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    authProv.getUserData.email,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  OutlineButton(
                    onPressed: () {
                      Alert(
                        context: context,
                        type: AlertType.info,
                        title: "COMING SOON",
                        desc: "Pets Not Available Yet",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "OK",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            width: 120,
                          )
                        ],
                      ).show();
                    },
                    borderSide: BorderSide(color: Colors.pink[200], width: 3),
                    textColor: Colors.pink[200],
                    child: Row(
                      children: <Widget>[
                        Icon(MdiIcons.dogSide, color: Colors.pink[200]),
                        Text("Pets Info")
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: Column(
                children: <Widget>[
                  CustomTextField(
                    controller: _fullNameCon,
                    focusNode: _fullNameFN,
                    hint: "Your Fullname",
                    label: "Fullname",
                    isEnable: true,
                    onFieldSubmited: (e) {
                      fieldFocusChange(context, _fullNameFN, _phoneNumberFN);
                    },
                    textInputAction: TextInputAction.next,
                    validator: (val) {
                      return validateInputTextField(3, val);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: _phoneNumberCon,
                    focusNode: _phoneNumberFN,
                    hint: "Input Your Phone Number",
                    label: "Phone Number",
                    isEnable: true,
                    onFieldSubmited: (e) {
                      fieldFocusChange(context, _phoneNumberFN, _addressFN);
                    },
                    textInputAction: TextInputAction.next,
                    validator: (val) {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: _addressCon,
                    focusNode: _addressFN,
                    hint: "Input Your Address",
                    label: "Address",
                    isEnable: true,
                    onFieldSubmited: (e) {
                      _addressFN.unfocus();
                    },
                    textInputAction: TextInputAction.next,
                    validator: (val) {},
                  ),
                  SizedBox(height: 20),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return state.maybeMap(
                          orElse: () => buildSaveButton(context),
                          onProgress: (e) => BtnPrimaryBlueLoading(),
                          failOrSuccessUpdateCustomerOption: (e) =>
                              buildSaveButton(context));
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Future showDialogOpenCamera(BuildContext context) {
    return showDialog(
        context: (context),
        builder: (context) {
          return SimpleDialog(
            title: Text("Choose Action"),
            children: <Widget>[
              ListTile(
                title: Text("Camera"),
                onTap: () {
                  Navigator.pop(context);
                  _getImage(source: ImageSource.camera);
                },
              ),
              ListTile(
                title: Text("Gallery"),
                onTap: () {
                  Navigator.pop(context);
                  _getImage(source: ImageSource.gallery);
                },
              )
            ],
          );
        });
  }

  Future _getImage({@required ImageSource source}) async {
    try {
      final pickedFile =
          await picker.getImage(source: source, imageQuality: 30);

      setState(() {
        _image = File(
          pickedFile.path,
        );
      });
    } catch (e) {
      showFlushbarError(errMessage: "Image error")..show(context);
    }
  }

  BtnPrimaryBlue buildSaveButton(BuildContext context) {
    return BtnPrimaryBlue(
      text: "Save",
      onPressed: () {
        _validateInputs(context);
      },
    );
  }

  void _validateInputs(BuildContext context) {
    if (_formKey.currentState.validate()) {
      final updatedData = UpdateCustomerData(
        accessKey: "d78c1a5c-ccbe-4c26-ac08-43ed66c8afb9",
        address: _addressCon.text,
        email: _emailCon.text,
        id: user.id,
        name: _fullNameCon.text,
        phoneNumber: _phoneNumberCon.text,
      );
      context
          .bloc<AuthBloc>()
          .add(AuthEvent.updateCustomer(data: updatedData, image: _image));
      _formKey.currentState.save();
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}
