import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/domain/feed_home/feed_failure.dart';
import 'package:i_love_iruka/domain/feed_home/i_feed_home_facade.dart';
import 'package:i_love_iruka/domain/feed_home/menu_data_model.dart';
import 'package:i_love_iruka/infrastructure/core/pref.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFeedHomeFacade)
class FeedHomeRepository extends IFeedHomeFacade {
  final Dio _dio;
  FeedHomeRepository(this._dio);

  FeedFailure checkErrorData(DioError e) {
    if (e.type == DioErrorType.RESPONSE) {
      if (e.response.statusCode == 404 ||
          e.response.statusCode == 400 ||
          e.response.statusCode == 401) {
        return FeedFailure(e.response.data['message']);
      }
    } else if (e.type == DioErrorType.DEFAULT) {
      return FeedFailure("something wrong with the server");
    }

    return FeedFailure("Server Error");
  }

  Options getDioOptions() {
    String _token = Pref().getUserData.token;
    Options options = Options(headers: {"Authorization": "Bearer $_token"});
    return options;
  }

  @override
  Future<Either<FeedFailure, List<Feed>>> getTopFeedData() async {
    Response response;
    print(_dio.options.headers);
    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/feeds/banner",
          options: getDioOptions());
      List _dataList = response.data['data'];
      final _result = _dataList.map((e) => Feed.fromJson(e)).toList();
      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<FeedFailure, List<Feed>>> getBottomFeedData() async {
    Response response;

    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/feeds/bottom",
          options: getDioOptions());
      List _dataList = response.data['data'];
      final _result = _dataList.map((e) => Feed.fromJson(e)).toList();
      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<FeedFailure, List<MenuDataModel>>> getHomeMenuList() async {
    Response response;

    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/menus/shown",
          options: getDioOptions());

      List list = (response.data['data']);
      List<MenuDataModel> listMenu =
          list.map((e) => MenuDataModel.fromJson(e)).toList();
      return right(listMenu);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<FeedFailure, Feed>> getSingleFeedData(String feedId) async {
    Response response;

    try {
      response = await _dio.get(
          Constants.getStagingUrl() + "/api/v1/feeds/$feedId",
          options: getDioOptions());

      final _data = response.data['data'];
      final _result = Feed.fromJson(_data);
      return right(_result);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }

  @override
  Future<Either<FeedFailure, List<List<dynamic>>>> refreshHome() async {
    List<Response> response;
    String url = Constants.getStagingUrl();
    Options options = getDioOptions();
    List<List<dynamic>> allData = <List<dynamic>>[];
        print(_dio.options.headers);

    try {
      response = await Future.wait([
        _dio.get(url + "/api/v1/feeds/banner", options: options),
        _dio.get(url + "/api/v1/feeds/bottom", options: options),
        _dio.get(url + "/api/v1/menus/shown", options: options),
      ]);

      print(response.length);
      List res1 = response[0].data['data'];
      List res2 = response[1].data['data'];
      List res3 = response[2].data['data'];
      List<Feed> listBanner = res1.map((e) => Feed.fromJson(e)).toList();
      List<Feed> listBootomFeed = res2.map((e) => Feed.fromJson(e)).toList();
      List<MenuDataModel> listMenu =
          res3.map((e) => MenuDataModel.fromJson(e)).toList();
      allData.add(listBanner);
      allData.add(listBootomFeed);
      allData.add(listMenu);
      return right(allData);
    } on DioError catch (e) {
      return left(checkErrorData(e));
    }
  }
}
