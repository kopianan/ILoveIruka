import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';

class PetController extends GetxController {
  List<PetDataModel> listPetDataModel = <PetDataModel>[].obs;
  List<PetDataModel> myPet = <PetDataModel>[].obs;

  void setListPet(List<PetDataModel> dataList) {
    listPetDataModel.assignAll(dataList);
  }

  List<PetDataModel> get getListPet => this.listPetDataModel;
  void setMyPet(List<PetDataModel> dataList) {
    myPet.assignAll(dataList);
  }

  List<PetDataModel> get getMyPet => this.myPet;
}
