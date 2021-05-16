import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/application/pet/pet_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/components/pet_type_choices.dart';
import 'package:i_love_iruka/presentation/widgets/btn_primary_blue.dart';
import 'package:i_love_iruka/util/pet_list.dart';

class PetStatusWidget extends StatefulWidget {
  const PetStatusWidget({
    Key key,
  }) : super(key: key);

  @override
  _PetStatusWidgetState createState() => _PetStatusWidgetState();
}

class _PetStatusWidgetState extends State<PetStatusWidget> {
  final addPetController = Get.put(AddPetController());
  List<PetPreferenceDataModel> _petStatus;

  @override
  void initState() {
    check();
    super.initState();
  }

  check() {
    try {
      var _data = addPetController.getPetType
          .firstWhere((element) => element.selected == true);
      if (_data.code == "0") {
        addPetController.setPetStatus(getPetStatusDog);
      } else {
        addPetController.setPetStatus(getPetStatus);
      }
    } catch (e) {
      addPetController.setPetStatus(getPetStatus);
    }
    _petStatus = addPetController.getPetStatus;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.start,        children: [
          Text(
            "Choose pet status",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridView.builder(
                    shrinkWrap: true,
                    itemCount: _petStatus.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1 / 1.2,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              var _newList = _petStatus
                                  .map((e) => e.copyWith(selected: false))
                                  .toList();
                              _petStatus = _newList;
                              var _data =
                                  _petStatus[index].copyWith(selected: true);
                              _petStatus[index] = _data;
                            });
                          },
                          child: PetTypeChoices(
                            petType: _petStatus[index],
                          ));
                    }),
                SizedBox(height: 40),
                BtnPrimaryBlue(
                  text: "Confirm",
                  onPressed: () {
                    addPetController.setPetStatus(_petStatus);
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
