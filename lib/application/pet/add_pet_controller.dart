import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';
import 'package:i_love_iruka/util/pet_list.dart' as petList;

class AddPetController extends GetxController {
  List<PetPreferenceDataModel> _petType = <PetPreferenceDataModel>[].obs;
  List<PetPreferenceDataModel> _petGender = <PetPreferenceDataModel>[].obs;
  List<PetPreferenceDataModel> _petSterile = <PetPreferenceDataModel>[].obs;
  List<PetPreferenceDataModel> _petStatus = <PetPreferenceDataModel>[].obs;
  RxString petBreed = "".obs;
  PageController petPageController = PageController(initialPage: 0);

  // @override
  // void onInit() {
  //   _petType.assignAll(petList.getPetType);
  //   _petGender.assignAll(petList.getPetGender);
  //   super.onInit();
  // }

  void setPetBreed(String pet) {
    this.petBreed.value = pet;
  }

  void setPetType(List<PetPreferenceDataModel> data) {
    this._petType = (data);
  }

  void setPetGender(List<PetPreferenceDataModel> data) {
    this._petGender = (data);
  }

  void setPetStatus(List<PetPreferenceDataModel> data) {
    this._petStatus = (data);
  }

  void setPetSterile(List<PetPreferenceDataModel> data) {
    this._petSterile = (data);
  }

  PageController get getPageController => this.petPageController;
  void pageNextPage() {
    var _currPage = int.parse(petPageController.page.toStringAsFixed(0));
    petPageController.jumpToPage(_currPage + 1);
  }

  ///return true if pet type is DOG , return false if pet type is CAT
  bool checkPetType() {
    var _data = _petType.firstWhere((element) => element.selected == true);
    if (_data.code == "0") {
      return true;
    }
    return false;
  }

  String get getPetBreed => this.petBreed.value;
  List<PetPreferenceDataModel> get getPetType => this._petType;
  List<PetPreferenceDataModel> get getPetGender => this._petGender;
  List<PetPreferenceDataModel> get getPetStatus => this._petStatus;
  List<PetPreferenceDataModel> get getPetSterile => this._petSterile;
}
