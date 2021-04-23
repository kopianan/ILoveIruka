import 'package:flutter/material.dart';
import 'package:i_love_iruka/domain/pets/label.dart';

class PetStatusWidget extends StatefulWidget {
  const PetStatusWidget(
      {Key key,
      @required this.status,
      @required this.selected,
      @required this.label})
      : super(key: key);
  final List<Label> status;
  final ValueChanged<Label> selected;
  final String label;
  @override
  _PetStatusWidgetState createState() => _PetStatusWidgetState();
}

class _PetStatusWidgetState extends State<PetStatusWidget> {
  Label _selected;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Row(
            children: widget.status
                .map(
                  (e) => Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: RadioListTile(
                        title: Text(e.label),
                        value: e,
                        groupValue: _selected,
                        onChanged: (val) {
                          setState(() {
                            _selected = val;
                          });
                          return widget.selected(val);
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
