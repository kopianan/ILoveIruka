import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/pets/i_pet_facade.dart';
import 'package:i_love_iruka/domain/pets/pet_add_new_post_request.dart';
import 'package:i_love_iruka/domain/pets/pet_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_post_data_model.dart';
import 'package:i_love_iruka/domain/pets/pet_req_res.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

import 'package:http_parser/http_parser.dart';

@LazySingleton(as: IPetFacade)
class PetRepository extends IPetFacade {
  final Dio _dio;
  PetRepository(this._dio);

  GeneralFailure checkErrorData(DioError e) {
    if (e.type == DioErrorType.RESPONSE) {
      if (e.response.statusCode == 404 ||
          e.response.statusCode == 400 ||
          e.response.statusCode == 401) {
        return GeneralFailure(e.response.data['message']);
      }
    } else if (e.type == DioErrorType.DEFAULT) {
      return GeneralFailure("something wrong with the server");
    }

    return GeneralFailure("Server Error");
  }

  Options getDioOptions() {
    String _token = Pref().getUserData.token;
    Options options = Options(headers: {"Authorization": "Bearer $_token"});
    return options;
  }

  @override
  Future<Either<GeneralFailure, List<PetDataModel>>> getAllPets(
      GetPetRequestData request) async {
    Response response;
    try {
      response = await _dio.post(
          Constants.getStagingUrl() + "/api/v1/petstagram/feed",
          options: getDioOptions(),
          data: request.toJson());

      List _data = response.data['data']['items'];
      List<PetDataModel> _result =
          _data.map((e) => PetDataModel.fromJson(e)).toList();
      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<GeneralFailure, String>> uploadPetProfilePicture(
      File image, String petId) async {
    Response response;

    FormData formData = FormData.fromMap({
      "id": petId,
      "file": await MultipartFile.fromFile(image.path,
          contentType: MediaType('image', 'jpeg')),
    });

    try {
      response = await _dio.post(
          Constants.getStagingUrl() + "/api/v1/images/pet-picture",
          data: formData,
          options: Options(
            contentType: 'multipart/form-data',
          ));
      final _res = response.data['data']['path'];
      return right(_res.toString());
    } on DioError catch (e) {
      print(e);
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<GeneralFailure, PetDataModel>> saveNewPet(
      SavePetRequestData data) async {
    Response response;
    try {
      response = await _dio.post(Constants.getStagingUrl() + "/api/v1/pet",
          options: getDioOptions(), data: data.toJson());

      final _data = response.data['data'];
      PetDataModel _result = PetDataModel.fromJson(_data);
      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<GeneralFailure, List<PetDataModel>>> getMyPet() async {
    Response response;
    try {
      response = await _dio.get(Constants.getStagingUrl() + "/api/v1/pet/mine",
          options: getDioOptions());

      List _data = response.data['data'];
      List<PetDataModel> listPet =
          _data.map((e) => PetDataModel.fromJson(e)).toList();
      return right(listPet);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<GeneralFailure, List<PetPostDataModel>>> getPetPostById(
      String petId) async {
    Response response;
    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/petstagram/post/$petId",
          options: getDioOptions());

      List _data = response.data['data'];
      List<PetPostDataModel> listPet =
          _data.map((e) => PetPostDataModel.fromJson(e)).toList();
      return right(listPet.reversed.toList());
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<GeneralFailure, String>> addNewPost(
      PetAddNewPostRequest request, String petId) async {
    Response response;
    try {
      response = await _dio.post(
          Constants.getStagingUrl() + "/api/v1/petstagram/post/$petId",
          options: getDioOptions(),
          data: request.toJson());
      print(response.data);
      return right("Successful upload post");
    } on DioError catch (e) {
      print(e.toString());
      return left(checkErrorData(e));
    }
  }
}
