import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/pet_gender_widget.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/pet_status_widget.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/pet_sterile_widget.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/pet_data_widget.dart';
import 'package:i_love_iruka/util/pet_list.dart';

import 'widget/pet_type_widget.dart';

class AddNewPetPage2 extends StatefulWidget {
  static final String TAG = '/add_new_pet_page2';
  @override
  _AddNewPetPage2State createState() => _AddNewPetPage2State();
}

class _AddNewPetPage2State extends State<AddNewPetPage2> {
  PageController controller;
  final addPetController = Get.put(AddPetController());
  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() {
    addPetController.setPetType(getPetType);
    addPetController.setPetGender(getPetGender);
    addPetController.setPetStatus(getPetStatusDog);
    addPetController.setPetSterile(getPetSterile);
    controller = addPetController.getPageController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          PetTypeWidget(),
          PetGenderWidget(),
          PetStatusWidget(),
          PetSterileWidget(),
          PetDataWidget(),
        ],
      ),
    ));
  }
}
