import 'package:flutter/material.dart';
import 'package:i_love_iruka/domain/pets/label.dart';

class PetGenderRadioWidget extends StatefulWidget {
  const PetGenderRadioWidget({
    Key key,
    @required this.genderList,
    @required this.selected,
    @required this.initial,
  }) : super(key: key);
  final List<Label> genderList;
  final Label initial;
  final ValueChanged<Label> selected;
  @override
  _PetGenderRadioWidgetState createState() => _PetGenderRadioWidgetState();
}

class _PetGenderRadioWidgetState extends State<PetGenderRadioWidget> {
  Label _selected;
  @override
  void initState() {
    _selected = widget.initial;
    super.initState();
  }

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
            children: widget.genderList
                .map(
                  (e) => Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (e.code == "0")
                              ? Colors.blue[200]
                              : Colors.pink[200],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: RadioListTile(
                        activeColor:
                            (e.code == "0") ? Colors.blue : Colors.pink,
                        title: Text(e.label),
                        value: e,
                        groupValue: _selected,
                        onChanged: (val) {
                          widget.selected(val); 
                          setState(() {
                            _selected = val;
                          });
                        },
                      ),
                    ),
                  ),
                )
                .toList()),
      ],
    );
  }
}

enum PetGender { MALE, FEMALE }
