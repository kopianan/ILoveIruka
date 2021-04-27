part of 'pet_bloc.dart';

@freezed
abstract class PetEvent with _$PetEvent {
  const factory PetEvent.started() = _Started;
  const factory PetEvent.getPetList(GetPetRequestData requestData) =
      _GetPetList;
  const factory PetEvent.uploadPhoto(File photo, String petId) = _UploadPhoto;
  const factory PetEvent.saveNewPet(SavePetRequestData petRequestData) =
      _SaveNewPet;
  const factory PetEvent.getMyPet() = _GetMyPet;
  const factory PetEvent.getPetPostById(String id) = _GetPetPostById;
  const factory PetEvent.addNewPetPost(
      PetAddNewPostRequest request, String petId) = _AddNewPetPost;
  const factory PetEvent.deletePetPost(String petId) = _DeletePetPost;
  const factory PetEvent.deletePet(String petId) = _DeletePet;
}
