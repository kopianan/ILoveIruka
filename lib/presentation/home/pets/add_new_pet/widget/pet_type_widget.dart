import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/components/pet_type_choices.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/widget_collection.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/util/pet_list.dart';

class PetTypeWidget extends StatefulWidget {
  const PetTypeWidget({
    Key key,
  }) : super(key: key);

  @override
  _PetTypeWidgetState createState() => _PetTypeWidgetState();
}

class _PetTypeWidgetState extends State<PetTypeWidget> {
  final addPetController = Get.put(AddPetController());
  List<PetPreferenceDataModel> _petType;
  @override
  void initState() {
    _petType = addPetController.getPetType;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AddPetTitle("PET TYPE"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: _petType.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1 / 1.2,
                          crossAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              setState(() {
                                var _newList = _petType
                                    .map((e) => e.copyWith(selected: false))
                                    .toList();
                                _petType = _newList;
                                var _data =
                                    _petType[index].copyWith(selected: true);
                                _petType[index] = _data;
                              });
                            },
                            child: PetTypeChoices(
                              petType: _petType[index],
                            ));
                      }),
                  SizedBox(height: 40),
                  BtnPrimaryBlue(
                    text: "Confirm",
                    onPressed: () {
                      addPetController.setPetType(_petType);
                      addPetController.pageNextPage();
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
