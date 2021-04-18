import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/pets/pet_add_new_post_request.dart';

import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_post_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_req_res.dart';

abstract class IPetFacade {
  Future<Either<GeneralFailure, List<PetDataModel>>> getAllPets(
      GetPetRequestData request);
  Future<Either<GeneralFailure, String>> uploadPetProfilePicture(File photo);
  Future<Either<GeneralFailure, PetDataModel>> saveNewPet(
      SavePetRequestData data);
  Future<Either<GeneralFailure, List<PetDataModel>>> getMyPet();
  Future<Either<GeneralFailure, String>> addNewPost(
      PetAddNewPostRequest request, String petId);
  Future<Either<GeneralFailure, List<PetPostDataModel>>> getPetPostById(
      String petId);
}
