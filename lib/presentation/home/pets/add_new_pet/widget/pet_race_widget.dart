import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/components/pet_type_choices.dart';
import 'package:i_love_iruka/presentation/home/pets/widgets/decoration_widget.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/util/pet_list.dart';

import '../../add_new_pet_page.dart';

class PetRaceWidget extends StatefulWidget {
  const PetRaceWidget({
    Key key,
  }) : super(key: key);

  @override
  _PetRaceWidgetState createState() => _PetRaceWidgetState();
}

class _PetRaceWidgetState extends State<PetRaceWidget> {
  final addPetController = Get.put(AddPetController());
  List<PetPreferenceDataModel> _petSterile;
  String selectedBreed;

  @override
  void initState() {
    _petSterile = addPetController.getPetSterile;
    super.initState();
  }

  TextEditingController breed;

  @override
  Widget build(BuildContext context) {
    breed = TextEditingController();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pet Race",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (breed.text.isNotEmpty)
                    ? SizedBox()
                    : DropdownButtonFormField(
                        value: selectedBreed,
                        onChanged: (val) {
                          setState(() {
                            selectedBreed = val;
                          });
                          if (val == dogRaces.first || val == catRaces.first) {
                            selectedBreed = null;
                          }
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                        decoration: DecorationWidget.getInput("Pet Breed"),
                        items: ((addPetController.checkPetType()
                                ? dogRaces
                                : catRaces))
                            .map((e) =>
                                DropdownMenuItem(child: Text(e), value: e))
                            .toList()),
                SizedBox(
                  height: 20,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Other Breed",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    onChanged: (e) {
                      if (e.isNotEmpty) {
                        setState(() {
                        selectedBreed = null;});
                      }
                    },
                    controller: breed,
                    decoration:
                        DecorationWidget.getInput("Write other race type"),
                  ),
                ]),
                SizedBox(
                  height: 40,
                ),
                BtnPrimaryBlue(
                  text: "Confirm",
                  onPressed: () {
                    print(_petSterile);
                    addPetController.setPetSterile(_petSterile);
                    addPetController.pageNextPage();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
