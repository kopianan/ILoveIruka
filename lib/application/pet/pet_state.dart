part of 'pet_bloc.dart';

@freezed
abstract class PetState with _$PetState {
  const factory PetState.initial() = _Initial;
  const factory PetState.loading() = _Loading;
  const factory PetState.error(GeneralFailure failure) = _Error;
  const factory PetState.onGetPetListData(List<PetDataModel> petList) =
      _OnGetPetListData;
  const factory PetState.onUploadPhoto(String photo) = _OnUploadPhoto;
  const factory PetState.onSaveNewPet(PetDataModel data) = _OnSaveNewPet;
  const factory PetState.onGetMyPet(List<PetDataModel> list) = _OnGetMyPet;
}
