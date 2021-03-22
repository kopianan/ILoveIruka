import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/other/i_other_facade.dart';
import 'package:i_love_iruka/domain/other/raja_ongkir.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOtherFacade)
class OtherRepository extends IOtherFacade {
  final Dio _dio;
  OtherRepository(this._dio);

  @override
  Future<Either<String, List<RajaOngkir>>> getCity(String provinceId) async {
    Response response;
    final _params = {"province": provinceId};
    try {
      response = await _dio.get(Constants.getRajaOngkirUrl + "/starter/city",
          queryParameters: _params,
          options: Options(headers: Constants.getRajaOngkirHeader));

      final List _listResult = response.data["rajaongkir"]["results"];
      final _result = _listResult.map((e) => RajaOngkir.fromJson(e)).toList();
      print(_result.first);
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(e.response.data.toString());
      }

      return left(e.error.toString());
    }
  }

  @override
  Future<Either<String, List<RajaOngkir>>> getProvince() async {
    Response response;
    try {
      response = await _dio.get(
          Constants.getRajaOngkirUrl + "/starter/province",
          options: Options(headers: Constants.getRajaOngkirHeader));

      final List _listResult = response.data["rajaongkir"]["results"];
      final _result = _listResult.map((e) => RajaOngkir.fromJson(e)).toList();
      print(_result.first);
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(e.response.data.toString());
      }

      return left(e.error.toString());
    }
  }
}
