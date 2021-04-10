import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/membership/i_membership_facade.dart';
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

  Options getDioOptionsDummy() {
    String _token = Pref().getUserData.token;
    Options options = Options(headers: {
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYwMzNjYzc2ZmRhYTljMGU3ODE1ZjdjYiIsImVtYWlsIjoic3VwZXJhZG1pbkBpcnVrYWNtcy5jb20iLCJmdWxsTmFtZSI6IkRpbyBEZWl2YSBXaWpheWEiLCJyb2xlIjp7ImlkIjoiNjAzMjVhOGI2NWYwNmEwZWRjZDZkZWViIiwibGFiZWwiOiJTdXBlciBBZG1pbiIsIm5hbWUiOiJTVVBFUl9BRE1JTiIsImdyb3VwIjoiMSJ9LCJwZXJtaXNzaW9ucyI6WyJpbnRlcm5hbHVzZXIiLCJzdXBlcmFkbWluIiwic3VwZXJhZG1pbiJdLCJpYXQiOjE2MTgwMTAyNDd9.z_HdFJMt1Xla45Xu43nKrkeQ7wBzGaBClVuaufT7IFM"
    });
    return options;
  }

  @override
  Future<Either<GeneralFailure, List<MembershipDataModel>>>
      getMembershipData() async {
    Response response;
    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/member-types?limit=10&skip=1",
          options: getDioOptionsDummy());

      final List _listResult = response.data["data"];
      final _result =
          _listResult.map((e) => MembershipDataModel.fromJson(e)).toList();

      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }
}
