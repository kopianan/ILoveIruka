part of 'feed_home_bloc.dart';

@freezed
abstract class FeedHomeState with _$FeedHomeState {
  factory FeedHomeState.initial() = _Initial;
  factory FeedHomeState.failOrSuccessGetData(
      {@required Option<Either<FeedFailure, List<Feed>>> responseOptions,
      @required bool isLoading}) = _FailOrSuccessGetData;
  factory FeedHomeState.failOrSuccessGetDataBottom(
      {@required Option<Either<FeedFailure, List<Feed>>> responseOptions,
      @required bool isLoading}) = _FailOrSuccessGetDataBottom;
  const factory FeedHomeState.onGetHomeMenuList(
      {@required Option<Either<FeedFailure, List<MenuDataModel>>> homeMenuData,
      @required bool isLoading}) = _OnGetHomeMenuList;
}
