import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectionModule {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(
      headers: {"accessKey": "d78c1a5c-ccbe-4c26-ac08-43ed66c8afb9"},
      contentType: "application/json"));
}
