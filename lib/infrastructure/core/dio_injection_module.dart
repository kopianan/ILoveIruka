import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectionModule {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(contentType: "application/json"));
}
