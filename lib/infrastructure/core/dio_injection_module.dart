import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:i_love_iruka/application/auth/user_controller.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjectionModule {
  @lazySingleton
  Dio get dio => Dio();
}
