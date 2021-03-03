import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/domain/feed_home/feed_failure.dart';
import 'package:i_love_iruka/domain/feed_home/i_feed_home_facade.dart';
import 'package:i_love_iruka/domain/feed_home/menu_data_model.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFeedHomeFacade)
class FeedHomeRepository extends IFeedHomeFacade {
  final Dio _dio;
  FeedHomeRepository(this._dio);

  @override
  Future<Either<FeedFailure, List<Feed>>> getTopFeedData() async {
    Response response;

    try {
      response = await _dio.get(
        Constants.getStagingUrl() + "/api/v1/feeds/banner",
      );
      List _dataList = response.data['data'];
      final _result = _dataList.map((e) => Feed.fromJson(e)).toList();
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        if (e.type == DioErrorType.RESPONSE) {
          if (e.response.statusCode == 404 || e.response.statusCode == 400) {
            return left(FeedFailure(e.response.data['message']));
          }
        }
      }

      return left(FeedFailure(e.response.data['message']['message']));
    }
  }

  @override
  Future<Either<FeedFailure, List<Feed>>> getBottomFeedData() async {
    Response response;

    try {
      response = await _dio.get(
        Constants.getStagingUrl() + "/api/v1/feeds/bottom",
      );
      List _dataList = response.data['data'];
      final _result = _dataList.map((e) => Feed.fromJson(e)).toList();
      return right(_result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        if (e.type == DioErrorType.RESPONSE) {
          if (e.response.statusCode == 404 || e.response.statusCode == 400) {
            return left(FeedFailure(e.response.data['message']));
          }
        }
      }

      return left(FeedFailure(e.response.data['message']['message']));
    }
  }

  @override
  Future<Either<FeedFailure, List<MenuDataModel>>> getHomeMenuList() async {
    Response response;

    try {
      response =
          await _dio.get(Constants.getStagingUrl() + "/api/v1/menus/shown");

      List list = (response.data['data']);
      List<MenuDataModel> listMenu =
          list.map((e) => MenuDataModel.fromJson(e)).toList();
      return right(listMenu);
    } on DioError catch (e) {
      if (e.type == DioErrorType.RESPONSE) {
        if (e.response.statusCode == 404 || e.response.statusCode == 400) {
          return left(FeedFailure(e.response.data['message']));
        }
      }
      return left(FeedFailure("Server Error"));
    }
  }
}
