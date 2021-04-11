import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/partnership/i_partnership_facade.dart';
import 'package:i_love_iruka/domain/partnership/partnership_data_model.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPartnershipFacade)
class PartnershipRepository extends IPartnershipFacade {
  final Dio _dio;
  PartnershipRepository(this._dio);

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
  Future<Either<GeneralFailure, List<PartnershipDataModel>>>
      getAllPartnership() async {
    Response response;
    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/partnerships",
          options: getDioOptions());

      List _data = response.data['data'];
      List<PartnershipDataModel> _result =
          _data.map((e) => PartnershipDataModel.fromJson(e)).toList();
      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }
}
