import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/membership/i_membership_facade.dart';
import 'package:i_love_iruka/domain/membership/member_info_data_model.dart';
import 'package:i_love_iruka/domain/membership/membership_data_model.dart';
import 'package:i_love_iruka/domain/other/i_other_facade.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMembershipFacade)
class MembershipRepository extends IMembershipFacade {
  Dio _dio;
  MembershipRepository(this._dio);

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
  Future<Either<GeneralFailure, List<MembershipDataModel>>>
      getMembershipData() async {
    Response response;
    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/member-types?limit=10&skip=1",
          options: getDioOptions());

      final List _listResult = response.data["data"];
      final _result =
          _listResult.map((e) => MembershipDataModel.fromJson(e)).toList();

      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<GeneralFailure, MemberInfoDataModel>> getMyMembership() async {
    Response response;
    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/membership",
          options: getDioOptions());

      final _listResult = response.data["data"];
      final _result = MemberInfoDataModel.fromJson(_listResult);

      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }
}
