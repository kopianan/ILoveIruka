import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/pets/i_pet_facade.dart';
import 'package:i_love_iruka/domain/pets/pet_add_new_post_request.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_post_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_req_res.dart';
import 'package:injectable/injectable.dart';

part 'pet_event.dart';
part 'pet_state.dart';
part 'pet_bloc.freezed.dart';

@injectable
class PetBloc extends Bloc<PetEvent, PetState> {
  PetBloc(this.iPetFacade) : super(_Initial());

  final IPetFacade iPetFacade;
  @override
  Stream<PetState> mapEventToState(
    PetEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      getPetList: (e) async* {
        yield PetState.loading();
        try {
          final _result = await iPetFacade.getAllPets(e.requestData);
          yield _result.fold(
            (l) => PetState.error(l),
            (r) => PetState.onGetPetListData(r),
          );
        } catch (e) {
          yield PetState.error(GeneralFailure(e.toString()));
        }
      },
      uploadPhoto: (_UploadPhoto value) async* {
        yield PetState.loading();
        try {
          final _result = await iPetFacade.uploadPetProfilePicture(
              value.photo, value.petId);
          yield _result.fold(
            (l) => PetState.error(l),
            (r) => PetState.onUploadPhoto(r),
          );
        } catch (e) {
          yield PetState.error(GeneralFailure(e.toString()));
        }
      },
      saveNewPet: (_SaveNewPet value) async* {
        yield PetState.loading();
        try {
          final _result = await iPetFacade.saveNewPet(value.petRequestData);
          yield _result.fold(
            (l) => PetState.error(l),
            (r) => PetState.onSaveNewPet(r),
          );
        } catch (e) {
          yield PetState.error(GeneralFailure(e.toString()));
        }
      },
      getMyPet: (value) async* {
        yield PetState.loading();
        try {
          final _result = await iPetFacade.getMyPet();
          yield _result.fold(
            (l) => PetState.error(l),
            (r) => PetState.onGetMyPet(r),
          );
        } catch (e) {
          yield PetState.error(GeneralFailure(e.toString()));
        }
      },
      getPetPostById: (value) async* {
        yield PetState.loading();
        try {
          final _result = await iPetFacade.getPetPostById(value.id);
          yield _result.fold(
            (l) => PetState.error(l),
            (r) => PetState.onGetPetPostById(r),
          );
        } catch (e) {
          yield PetState.error(GeneralFailure(e.toString()));
        }
      },
      addNewPetPost: (_AddNewPetPost value) async* {
        yield PetState.loading();
        try {
          final _result =
              await iPetFacade.addNewPost(value.request, value.petId);
          yield _result.fold(
            (l) => PetState.error(l),
            (r) => PetState.onAddNewPost(r),
          );
        } catch (e) {
          yield PetState.error(GeneralFailure(e.toString()));
        }
      },
      deletePetPost: (_DeletePetPost value) async* {
        yield PetState.loading();
        try {
          final _result = await iPetFacade.deletePetPostById(value.petId);
          yield _result.fold(
            (l) => PetState.error(l),
            (r) => PetState.onPetPostDeleted(r),
          );
        } catch (e) {
          yield PetState.error(GeneralFailure(e.toString()));
        }
      },
      deletePet: (_DeletePet value) async* {
        yield PetState.loading();
        try {
          final _result = await iPetFacade.deletePet(value.petId);
          yield _result.fold(
            (l) => PetState.error(l),
            (r) => PetState.onPetDeleted(r),
          );
        } catch (e) {
          yield PetState.error(GeneralFailure(e.toString()));
        }
      },
    );
  }
}
