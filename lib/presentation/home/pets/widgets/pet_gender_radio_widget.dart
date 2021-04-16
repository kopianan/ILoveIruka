import 'package:flutter/material.dart';

class PetGenderRadioWidget extends StatefulWidget {
  const PetGenderRadioWidget({
    Key key,
  }) : super(key: key);

  @override
  _PetGenderRadioWidgetState createState() => _PetGenderRadioWidgetState();
}

class _PetGenderRadioWidgetState extends State<PetGenderRadioWidget> {
  var _selected = PetGender.FEMALE;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gender",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: RadioListTile(
                  title: Text("Male"),
                  toggleable: true,
                  value: PetGender.MALE,
                  groupValue: _selected,
                  onChanged: (val) {
                    setState(() {
                      _selected = val;
                    });
                  },
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: RadioListTile(
                  title: Text("Female"),
                  toggleable: true,
                  value: PetGender.FEMALE,
                  groupValue: _selected,
                  onChanged: (val) {
                    setState(() {
                      _selected = val;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

enum PetGender { MALE, FEMALE }
