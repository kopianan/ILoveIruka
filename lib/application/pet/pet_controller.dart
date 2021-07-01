import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_pref.dart';
import 'package:i_love_iruka/domain/pets/pet_preference_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_preferences.dart';
import 'package:i_love_iruka/util/pet_list.dart';

class PetController extends GetxController {
  List<PetDataModel> listPetDataModel = <PetDataModel>[].obs;
  List<PetDataModel> myPet = <PetDataModel>[].obs;
  List<PetPreferences> petPreferences = <PetPreferences>[].obs;
  Rx<PetDataModel> mySelectedPet = PetDataModel().obs;
  Rx<PetDataModel> previouserSelectedPed = PetDataModel().obs;
  final userController = Get.put(UserController());

  RxBool isFiltered = false.obs;
  List<PetPref> _petType = <PetPref>[].obs;
  List<PetPref> _petGender = <PetPref>[].obs;
  RxString _searchName = "".obs;
  RxString _searchRace = "".obs;
  @override
  void onInit() {
    mySelectedPet.nil();
    initPetSearchData();
    super.onInit();
  }

  //FILTERED\\

  void setFiltered() {
    this.isFiltered.value = true;
  }

  void removeFiltered() {
    initPetSearchData();
    this.isFiltered.value = false;
  }

  void initPetSearchData() {
    _petType = petType
        .map((e) => PetPref(name: e.label, code: e.code, isActived: false))
        .toList();
    _petGender = gender
        .map((e) => PetPref(name: e.label, code: e.code, isActived: false))
        .toList();
    petPreferences = [
      PetPreferences(label: "Stumbum", status: false),
      PetPreferences(label: "Pedigree", status: false),
      PetPreferences(label: "Sterile", status: false),
    ];
    _searchName.value = "";
    _searchRace.value = "";
  }

  void setSearchName(String search) {
    this._searchName.value = search;
  }

  void setSearchRace(String race) {
    this._searchRace.value = race;
  }

  void setPetType(int index, PetPref petPref) {
    this._petType[index] = petPref;
  }

  void setPetGender(int index, PetPref petPref) {
    this._petGender[index] = petPref;
  }

  void setPetPreferences(int index, PetPreferences pet) {
    this.petPreferences[index] = pet;
  }

  List<PetPref> get getPetType => this._petType;
  List<PetPreferences> get getPetPReferences => this.petPreferences;
  List<PetPref> get getPetGender => this._petGender;
  String get getSearchName => this._searchName.value;
  String get getSearchRace => this._searchRace.value;
  //FILTERED\\

  void removeDataFromList(PetDataModel pet) {
    myPet.removeWhere((element) => element.id == pet.id);
  }

  void setListPet(List<PetDataModel> dataList) {
    // dataList.removeWhere(
    //     (element) => element.user == userController.getUserData().id);
    listPetDataModel.assignAll(dataList);
  }

  List<PetDataModel> get getListPet => this.listPetDataModel;
  void setMyPet(List<PetDataModel> dataList) {
    myPet.assignAll(dataList);
  }

  List<PetDataModel> get getMyPet => this.myPet;

  void setSelectedPet(PetDataModel data) {
    this.mySelectedPet.value = data;
    update();
  }

  PetDataModel get getMySelectedPet => this.mySelectedPet.value;

  void emptySelectedPet() {
    mySelectedPet.nil();
  }
}
