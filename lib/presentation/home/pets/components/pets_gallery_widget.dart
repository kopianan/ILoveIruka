import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_tags.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_formatter.dart';
import 'package:i_love_iruka/infrastructure/functions/custom_functions.dart';

class PetsGalleryWidget extends StatefulWidget {
  const PetsGalleryWidget({Key key, @required this.pets}) : super(key: key);
  final PetDataModel pets;

  @override
  _PetsGalleryWidgetState createState() => _PetsGalleryWidgetState();
}

class _PetsGalleryWidgetState extends State<PetsGalleryWidget> {
  List<PetTags> tags;
  void setTagList() {
    tags = [
      PetTags(
        label: "Type",
        color: Color(0xFFAEF3B0),
        value: widget.pets.animal.label,
      ),
      PetTags(
        label: "Race",
        color: Color(0xFFFAAFFF),
        value: widget.pets.race,
      ),
      PetTags(
        label: "Status",
        color: Color(0xFF4DA2D6),
        value: checkIfStumbumOrIsPedigree(widget.pets),
      ),
      PetTags(
          label: "Sterile",
          color: Color(0xFF4DA2D6),
          value: (widget.pets.isSterile == null)
              ? "STERILE"
              : (widget.pets.isSterile)
                  ? "STERILE"
                  : "NOT STERILE"),
      PetTags(
        label: "Gender",
        color: Color(0xFFFFB795),
        value: widget.pets.gender.label,
      ),
      PetTags(
        label: "Weight",
        color: Color(0xFFACA1FD),
        value: (widget.pets.weight / 1000.0).toStringAsFixed(1) + " Kg",
      ),
      PetTags(
        label: "Age",
        color: Color(0xFFFDFFA0),
        value: calculateAge(DateTime.now(), widget.pets.birthDate),
      ),
    ];
  }

  @override
  void initState() {
    setTagList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.pets.name,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                // Text("Alamat sesuai owner")
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Tags(
              itemCount: tags.length,
              horizontalScroll: true,
              itemBuilder: (index) {
                return Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(2, 2),
                              blurRadius: 2,
                              spreadRadius: 2)
                        ],
                        color: tags[index].color,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(tags[index].label),
                          Text(
                            tags[index].value,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pet Bio",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(widget.pets.bio),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container informationBox(String value, String key) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(key),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
    );
  }
}
