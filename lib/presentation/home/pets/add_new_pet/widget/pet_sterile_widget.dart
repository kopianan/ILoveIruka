import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/components/pet_type_choices.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/widget_collection.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/util/pet_list.dart';

class PetSterileWidget extends StatefulWidget {
  const PetSterileWidget({
    Key key,
  }) : super(key: key);

  @override
  _PetSterileWidgetState createState() => _PetSterileWidgetState();
}

class _PetSterileWidgetState extends State<PetSterileWidget> {
  final addPetController = Get.put(AddPetController());
  List<PetPreferenceDataModel> _petSterile;

  @override
  void initState() {
    _petSterile = addPetController.getPetSterile;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.start,        children: [
        WidgetCollection.getTitle("Choose Pet Sterile")
  ,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: _petSterile.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1 / 1.2,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              var _newList = _petSterile
                                  .map((e) => e.copyWith(selected: false))
                                  .toList();
                              _petSterile = _newList;
                              var _data =
                                  _petSterile[index].copyWith(selected: true);
                              _petSterile[index] = _data;
                            });
                          },
                          child: PetTypeChoices(
                            petType: _petSterile[index],
                          ));
                    }),
                SizedBox(height: 40),
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
