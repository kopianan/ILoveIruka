import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_req_res.dart';
import 'package:i_love_iruka/util/pet_list.dart' as petList;

class AddPetController extends GetxController {
  List<PetPreferenceDataModel> _petType = <PetPreferenceDataModel>[].obs;
  List<PetPreferenceDataModel> _petGender = <PetPreferenceDataModel>[].obs;
  List<PetPreferenceDataModel> _petSterile = <PetPreferenceDataModel>[].obs;
  List<PetPreferenceDataModel> _petStatus = <PetPreferenceDataModel>[].obs;
  String petBreed;
  RxString petImage = "".obs;
  File dummyImage;
  PageController petPageController = PageController(initialPage: 0);

  void setDummyImage(File image) {
    dummyImage = image;
  }

  void setPetImage(String image) {
    this.petImage.value = image;
  }

  void setPetBreed(String pet) {
    this.petBreed = pet;
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

  void previousePage() {
    var _currPage = int.parse(petPageController.page.toStringAsFixed(0));
    if (_currPage == 0) {
      throw Error();
    } else {
      petPageController.jumpToPage(_currPage - 1);
    }
  }

  ///return true if pet type is DOG , return false if pet type is CAT
  bool checkPetType() {
    var _data = _petType.firstWhere((element) => element.selected == true);
    if (_data.code == "0") {
      return true;
    }
    return false;
  }

  SavePetRequestData fillAllDataRequest(
      {String id, String name, String brithDate, String weight, String bio}) {
    bool _isDog = this.checkPetType();

    SavePetRequestData petRequestData = SavePetRequestData(
        id: id,
        name: name,
        birthDate: brithDate,
        weight: weight,
        race: this.getPetBreed,
        profilePictureUrl: this.petImage.value,
        gender: this
            .getPetGender
            .firstWhere((element) => element.selected == true)
            .code,
        animal: this
            .getPetType
            .firstWhere((element) => element.selected == true)
            .code,
        bio: bio,
        isPedigree: (_isDog)
            ? null
            : this
                .getPetStatus
                .firstWhere((element) => element.selected == true)
                .selected,
        isSterile: this
            .getPetSterile
            .firstWhere((element) => element.selected == true)
            .selected,
        isStumbum: (_isDog)
            ? this
                .getPetSterile
                .firstWhere((element) => element.selected == true)
                .selected
            : null);
    return petRequestData;
  }

  String get getImagePath => this.petImage.value;
  String get getPetBreed => this.petBreed;
  File get getDummyImage => this.dummyImage;
  List<PetPreferenceDataModel> get getPetType => this._petType;
  List<PetPreferenceDataModel> get getPetGender => this._petGender;
  List<PetPreferenceDataModel> get getPetStatus => this._petStatus;
  List<PetPreferenceDataModel> get getPetSterile => this._petSterile;
}
