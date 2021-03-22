import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class AddNewPetPage extends StatefulWidget {
  static final String TAG = '/add_new_pet_page';
  @override
  _AddNewPetPageState createState() => _AddNewPetPageState();
}

class _AddNewPetPageState extends State<AddNewPetPage> {
  TextEditingController birthDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Pet"),
      ),
      body: Column(
        children: [
          PetCustomFormField(),
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
    );
  }
}

class PetCustomFormField extends StatelessWidget {
  const PetCustomFormField({
    Key key,
    this.label,
    this.hintText,
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
