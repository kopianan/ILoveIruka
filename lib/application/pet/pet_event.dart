part of 'pet_bloc.dart';

@freezed
abstract class PetEvent with _$PetEvent {
  const factory PetEvent.started() = _Started;
  const factory PetEvent.getPetList(GetPetRequestData requestData) =
      _GetPetList;
  const factory PetEvent.uploadPhoto(File photo) = _UploadPhoto;
  const factory PetEvent.saveNewPet(SavePetRequestData petRequestData) =
      _SaveNewPet;
  const factory PetEvent.getMyPet() = _GetMyPet;
}
