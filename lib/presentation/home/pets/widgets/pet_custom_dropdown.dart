import 'package:flutter/material.dart';
import 'package:i_love_iruka/domain/pets/label.dart';

import 'decoration_widget.dart';

class PetCustomDropDown<T> extends StatefulWidget {
  const PetCustomDropDown(
      {Key key,
      @required this.items,
      @required this.label,
      @required this.onChanged,
      @required this.hintText})
      : super(key: key);
  final List<T> items;
  final String label;
  final String hintText;
  final ValueChanged<T> onChanged;
  @override
  _PetCustomDropDownState createState() => _PetCustomDropDownState();
}

class _PetCustomDropDownState extends State<PetCustomDropDown> {
  Label selectedType;
  @override
  void initState() {
    selectedType = null;
    super.initState();
  }

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
            FocusScope.of(context).requestFocus(FocusNode());

            return widget.onChanged(val);
          },
          decoration: DecorationWidget.getInput(widget.hintText),
          items: widget.items
              .map((e) => DropdownMenuItem(
                    child: Text(e.label),
                    value: e,
                  ))
              .toList()),
    ]);
  }
}
