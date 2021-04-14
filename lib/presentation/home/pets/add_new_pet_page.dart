import 'dart:io';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:i_love_iruka/presentation/home/pets/widgets/pet_gender_radio_widget.dart';
import 'package:image_picker/image_picker.dart';

import 'widgets/decoration_widget.dart';

class AddNewPetPage extends StatefulWidget {
  static final String TAG = '/add_new_pet_page';
  @override
  _AddNewPetPageState createState() => _AddNewPetPageState();
}

class _AddNewPetPageState extends State<AddNewPetPage> {
  TextEditingController birthDate = TextEditingController();
  File _image;
  final picker = ImagePicker();

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFBFC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Add New Pet"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              petUploadPhoto(),
              SizedBox(height: 15),
              PetCustomFormField(
                label: "Pet name",
                hintText: "Your new pet name",
              ),
              SizedBox(height: 15),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Date of birth",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                DateTextFormField(birthDate: birthDate),
              ]),
              SizedBox(height: 15),
              PetCustomDropDown(
                hintText: "Choose your pet type",
                label: "Pet Type",
                items: ["Dog", "Cat"],
              ),
              SizedBox(height: 15),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.grey[400]),
              //     borderRadius: BorderRadius.circular(8),
              //   ),
              //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: PetCustomDropDown(
              //             items: ["Poodle", "Bulldog"],
              //             label: "Type 1",
              //             hintText: "Breeding 1"),
              //       ),
              //       SizedBox(width: 15),
              //       Expanded(
              //         child: PetCustomDropDown(
              //             items: ["Poodle", "Bulldog"],
              //             label: "Type 2",
              //             hintText: "Breeding 2"),
              //       ),
              //     ],
              //   ),
              // ),
              PetCustomDropDown(
                  items: ["Poodle", "Bulldog"],
                  label: "Pet Type",
                  hintText: "Breeding 2"),
              SizedBox(height: 15),
              PetGenderRadioWidget(),
              SizedBox(height: 15),
              PetCustomDropDown(
                  items: ["Red", "Black", "Brown"],
                  label: "Color",
                  hintText: "Choose your pet color"),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  Widget petUploadPhoto() {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Choose Action"),
                  actions: [
                    TextButton(
                        onPressed: () async {
                          Get.back();
                          await getImage(ImageSource.camera);
                        },
                        child: Text("Camera")),
                    TextButton(
                        onPressed: () async {
                          Get.back();
                          await getImage(ImageSource.gallery);
                        },
                        child: Text("Gallery")),
                  ],
                );
              });
        },
        child: Container(
          height: 120,
          width: 120,
          padding: EdgeInsets.all(10),
          child: (_image == null)
              ? Icon(
                  Icons.upload_sharp,
                  size: 70,
                  color: Colors.grey[850],
                )
              : null,
          decoration: BoxDecoration(
              color: Color(0xffFAFBFC),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(2, 2),
                    spreadRadius: 2,
                    blurRadius: 2)
              ],
              shape: BoxShape.circle,
              border: Border.all(width: 3, color: Colors.white),
              image: (_image == null)
                  ? null
                  : DecorationImage(
                      image: FileImage(_image), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}

class DateTextFormField extends StatelessWidget {
  const DateTextFormField({
    Key key,
    @required this.birthDate,
  }) : super(key: key);

  final TextEditingController birthDate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: birthDate,
        readOnly: true,
        onTap: () async {
          final date = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(DateTime.now().year - 5),
            lastDate: DateTime.now(),
          );
          if (date != null) {
            birthDate.text = DateFormat('dd-MMMM-yyyy').format(date);
          }
        },
        enabled: true,
        decoration: DecorationWidget.getInput("Pet birth date"));
  }
}

class PetCustomFormField extends StatelessWidget {
  const PetCustomFormField({
    Key key,
    @required this.label,
    @required this.hintText,
  }) : super(key: key);
  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        label,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      SizedBox(height: 5),
      TextFormField(
        decoration: DecorationWidget.getInput(hintText),
      ),
    ]);
  }
}

class PetCustomDropDown extends StatefulWidget {
  const PetCustomDropDown(
      {Key key,
      @required this.items,
      @required this.label,
      @required this.hintText})
      : super(key: key);
  final List<String> items;
  final String label;
  final String hintText;
  @override
  _PetCustomDropDownState createState() => _PetCustomDropDownState();
}

class _PetCustomDropDownState extends State<PetCustomDropDown> {
  String selectedType;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      DropdownButtonFormField(
          value: selectedType,
          onChanged: (val) {
            setState(() {
              selectedType = val;
            });
          },
          decoration: DecorationWidget.getInput(widget.hintText),
          items: widget.items
              .map((e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ))
              .toList()),
    ]);
  }
}
