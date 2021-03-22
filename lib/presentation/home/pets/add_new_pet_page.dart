import 'dart:io';

import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:image_picker/image_picker.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Add New Pet"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            petUploadPhoto(),
            SizedBox(height: 5),
            PetCustomFormField(
              label: "Pet Name",
              hintText: "Your new pet name",
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Birth Date",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
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
                    birthDate.text = date.toString();
                  }

                  print(birthDate);
                },
                enabled: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Pet birth date"),
              ),
            ]),
            PetCustomDropDown(
              hintText: "Choose your pet type",
              label: "Pet Type",
              items: ["Dog", "Cat"],
            ),
            PetCustomDropDown(
                items: ["Male", "Female", "Not Specify"],
                label: "Gender",
                hintText: "Choose your pet gender"),
          ],
        ),
      ),
    );
  }

  Widget petUploadPhoto() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Upload pet profile photo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Align(
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
              height: 150,
              width: 150,
              padding: EdgeInsets.all(10),
              child: (_image == null)
                  ? Icon(
                      Icons.upload_sharp,
                      size: 70,
                      color: Colors.grey[850],
                    )
                  : null,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  image: (_image == null)
                      ? null
                      : DecorationImage(
                          image: FileImage(_image), fit: BoxFit.cover)),
            ),
          ),
        ),
      ],
    );
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
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextFormField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), hintText: hintText),
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
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: widget.hintText),
          items: widget.items
              .map((e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ))
              .toList()),
    ]);
  }
}
