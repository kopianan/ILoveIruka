import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/components/pet_type_choices.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/widget_collection.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/util/pet_list.dart';

class PetGenderWidget extends StatefulWidget {
  const PetGenderWidget({
    Key key,
  }) : super(key: key);

  @override
  _PetGenderWidgetState createState() => _PetGenderWidgetState();
}

class _PetGenderWidgetState extends State<PetGenderWidget> {
  final addPetController = Get.put(AddPetController());
  List<PetPreferenceDataModel> _petGender;

  @override
  void initState() {
    _petGender = addPetController.getPetGender;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WidgetCollection.getTitle("Choose Pet Gender")
         ,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: _petGender.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1 / 1.2,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              var _newList = _petGender
                                  .map((e) => e.copyWith(selected: false))
                                  .toList();
                              _petGender = _newList;
                              var _data =
                                  _petGender[index].copyWith(selected: true);
                              _petGender[index] = _data;
                            });
                          },
                          child: PetTypeChoices(
                            petType: _petGender[index],
                          ));
                    }),
                SizedBox(height: 40),
                BtnPrimaryBlue(
                  text: "Confirm",
                  onPressed: () {
                    print(_petGender);
                    addPetController.setPetGender(_petGender);
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
