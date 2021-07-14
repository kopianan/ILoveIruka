import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/pet/add_pet_controller.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/pet_gender_widget.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/pet_status_widget.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/pet_sterile_widget.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/pet_data_widget.dart';
import 'package:i_love_iruka/presentation/home/pets/add_new_pet/widget/widget_collection.dart';
import 'package:i_love_iruka/util/pet_list.dart';

import 'widget/pet_photo_widget.dart';
import 'widget/pet_race_widget.dart';
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

  Future<bool> _onWillPop() async {
    try {
      addPetController.isPreviousePage();
    } catch (e) {
      addPetController.removeAllData();
      return true;
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            GetTitle(
              title: "Add New Pet",
              onBack: () {
                if (!addPetController.isPreviousePage()) {
                  addPetController.removeAllData();
                  Get.back();
                }
                ;
              },
              onClose: () {
                Get.dialog(AlertDialog(
                  title: Text("EXIT PROCESS "),
                  content: Text("Are you sure want to cancel the proccess ? "),
                  actions: [
                    TextButton(
                      onPressed: () {
                        addPetController.removeAllData();
                        Get.back(closeOverlays: true);
                      },
                      child: Text(
                        "Yes",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "No",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ));
              },
            ),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: <Widget>[
                  PetTypeWidget(),
                  PetGenderWidget(),
                  PetStatusWidget(),
                  PetSterileWidget(),
                  PetRaceWidget(),
                  PetPhotoWidget(),
                  PetDataWidget(),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
