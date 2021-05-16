import 'package:flutter/material.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';

class PetTypeChoices extends StatefulWidget {
  const PetTypeChoices({Key key, this.petType}) : super(key: key);
  final PetPreferenceDataModel petType;

  @override
  _PetTypeChoicesState createState() => _PetTypeChoicesState();
}

class _PetTypeChoicesState extends State<PetTypeChoices> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 2), borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              widget.petType.image,
              color: (widget.petType.selected) ? null : Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.petType.label,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
