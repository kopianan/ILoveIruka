import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_love_iruka/provider/data_bridge.dart';
import 'package:i_love_iruka/provider/register_provider.dart';
import 'package:i_love_iruka/widgets/color_palate.dart';
import 'package:i_love_iruka/widgets/common_edittext.dart';
import 'package:i_love_iruka/widgets/password_edittext.dart';
import 'package:i_love_iruka/widgets/register_button_next_and_back.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';
import 'package:provider/provider.dart';

import '../register_additional.dart';

class RegisterDataInformation extends StatefulWidget {
  const RegisterDataInformation({
    Key key,
    @required this.distanceOfElement,
    @required RegisterAdditional registerAdditional,
    @required this.c,
    @required this.dataBridge,
  })  : _registerAdditional = registerAdditional,
        super(key: key);

  final double distanceOfElement;

  final RegisterAdditional _registerAdditional;
  final DataBridge dataBridge;
  final ScrollController c;

  @override
  _RegisterDataInformationState createState() => _RegisterDataInformationState();
}

class _RegisterDataInformationState extends State<RegisterDataInformation> {
  bool _autoValidate = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _firstNameController = TextEditingController();
  var _emailController = TextEditingController();
  var _phoneController = TextEditingController();
  var _passwordController = TextEditingController();
  var _repeatPasswordController = TextEditingController();
  var _picPhoneNumberController = TextEditingController();
  var _descriptionController = TextEditingController();
  var _addressController = TextEditingController();

  @override
  void initState() {
    var dataProvider = Provider.of<RegisterProvider>(context, listen: false);
    _firstNameController.text = dataProvider.getFullName;
    _emailController.text = dataProvider.getEmail;
    _phoneController.text = dataProvider.getPhone;
    _passwordController.text = dataProvider.getPassword;
    _repeatPasswordController.text = dataProvider.getRepeatPassword;
    _picPhoneNumberController.text = dataProvider.getPic;
    _descriptionController.text = dataProvider.getDescription;
    _addressController.text = dataProvider.getAddress;

    super.initState();
  }

  validateRegisterUser(DataBridge dataBridge) {
    int page;
    // (dataBridge.getRoleList().name.toString().toLowerCase().contains("groomer")) ? page = 2 : page = 3;

    // widget._registerAdditional.backAnimated(context, widget.c, page);
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      if (_passwordController.text.trim() != _repeatPasswordController.text.trim()) {
        Fluttertoast.showToast(msg: "Password doesn't match");
      } else {
        (dataBridge.getRoleList().toString().toLowerCase().contains("groomer")) ? page = 2 : page = 3;

        widget._registerAdditional.backAnimated(context, widget.c, page);
      }
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardAvoider(
      autoScroll: true,
      child: Consumer<RegisterProvider>(
        builder: (_, registerProvider, __) => Consumer<DataBridge>(
          builder: (_, dataBridge, __) => Container(
              child: Form(
            autovalidate: _autoValidate,
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Fill Your Information",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      CommonEditText(
                        hintText: "Input your full name",
                        labelText: "First name",
                        prefixIcon: FontAwesomeIcons.idCard,
                        textEditingController: _firstNameController,
                        validator: RegisterAdditional.validateName,
                        onSave: registerProvider.setFullName,
                      ),
                      SizedBox(
                        height: widget.distanceOfElement,
                      ),
                      CommonEditText(
                        hintText: "Input valid e-mail address",
                        labelText: "E-mail",
                        textInputType: TextInputType.emailAddress,
                        prefixIcon: Icons.email,
                        textEditingController: _emailController,
                        validator: RegisterAdditional.validateEmail,
                        onSave: registerProvider.setEmail,
                      ),
                      SizedBox(
                        height: widget.distanceOfElement,
                      ),
                      CommonEditText(
                        hintText: "Input phone number",
                        labelText: "Phone Number",
                        textInputType: TextInputType.number,
                        prefixIcon: Icons.call,
                        textEditingController: _phoneController,
                        validator: RegisterAdditional.validateName,
                        onSave: registerProvider.setPhone,
                      ),
                      SizedBox(
                        height: widget.distanceOfElement,
                      ),
                      CommonEditText(
                        hintText: "Input Address",
                        labelText: "Address",
                        prefixIcon: FontAwesomeIcons.addressCard,
                        textEditingController: _addressController,
                        validator: RegisterAdditional.validateName,
                        onSave: registerProvider.setAddress,
                      ),
                      SizedBox(
                        height: widget.distanceOfElement,
                      ),
                      PasswordEditText(
                        hintText: "Input at least 6 character",
                        labelText: "Password",
                        prefixIcon: FontAwesomeIcons.lock,
                        textEditingController: _passwordController,
                        validator: RegisterAdditional.validateName,
                        onSave: registerProvider.setPassword,
                      ),
                      SizedBox(
                        height: widget.distanceOfElement,
                      ),
                      PasswordEditText(
                        hintText: "Retype password",
                        labelText: "Confirm Password",
                        prefixIcon: FontAwesomeIcons.lock,
                        textEditingController: _repeatPasswordController,
                        validator: RegisterAdditional.validateName,
                        onSave: registerProvider.setRepeatPassword,
                      ),
                      SizedBox(
                        height: widget.distanceOfElement,
                      ),
                      (widget.dataBridge.getRoleList().toString().toLowerCase().contains("shop"))
                          ? CommonEditText(
                              hintText: "PIC Information",
                              labelText: "PIC",
                              prefixIcon: Icons.phone_android,
                              textEditingController: _picPhoneNumberController,
                              onSave: registerProvider.setPic,
                            )
                          : Container(),
                      SizedBox(
                        height: widget.distanceOfElement,
                      ),
                      (widget.dataBridge.getRoleList().toString().toLowerCase() == "groomer")
                          ? CommonEditText(
                              hintText: "Input description",
                              labelText: "Description",
                              prefixIcon: FontAwesomeIcons.file,
                              textEditingController: _descriptionController,
                              onSave: registerProvider.setDescription,
                            )
                          : Container(),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RegisterButtonNextAndBack(
                        buttonText: "Back",
                        buttonColor: ColorPalate.blueGradient1,
                        onButtonPressed: _onButtonBackPressed,
                      ),
                      RegisterButtonNextAndBack(buttonText: "Next", buttonColor: ColorPalate.darkOrange, onButtonPressed: () => _onButtonNextPressed(dataBridge)),
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }

  void _onButtonBackPressed() {
    widget._registerAdditional.backAnimated(context, widget.c, 0);
  }

  void _onButtonNextPressed(DataBridge dataBridge) {
    FocusScope.of(context).requestFocus(new FocusNode());
    validateRegisterUser(dataBridge);
  }
}
