import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/feed_home/feed.dart';
import 'package:i_love_iruka/domain/feed_home/feed_failure.dart';
import 'package:i_love_iruka/domain/feed_home/i_feed_home_facade.dart';
import 'package:i_love_iruka/domain/feed_home/menu_data_model.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'feed_home_event.dart';
part 'feed_home_state.dart';

part 'feed_home_bloc.freezed.dart';

@injectable
class FeedHomeBloc extends Bloc<FeedHomeEvent, FeedHomeState> {
  IFeedHomeFacade _iFeedHomeFacade;
  FeedHomeBloc(this._iFeedHomeFacade) : super(FeedHomeState.initial());

  @override
  Stream<FeedHomeState> mapEventToState(
    FeedHomeEvent event,
  ) async* {
    yield* event.map(
      getTopFeedData: (e) async* {
        yield FeedHomeState.failOrSuccessGetData(
          responseOptions: none(),
          isLoading: true,
        );

        final _result = await _iFeedHomeFacade.getTopFeedData();

        yield FeedHomeState.failOrSuccessGetData(
          responseOptions: some(_result),
          isLoading: false,
        );
      },
      getBottomFeedData: (e) async* {
        yield FeedHomeState.failOrSuccessGetDataBottom(
          responseOptions: none(),
          isLoading: true,
        );
        final _result = await _iFeedHomeFacade.getBottomFeedData();

        yield FeedHomeState.failOrSuccessGetDataBottom(
          responseOptions: some(_result),
          isLoading: false,
        );
      },
      getHomeMenuList: (_GetHomeMenuList value) async* {
        yield FeedHomeState.onGetHomeMenuList(
            homeMenuData: none(), isLoading: true);
        final _result = await _iFeedHomeFacade.getHomeMenuList();
        yield FeedHomeState.onGetHomeMenuList(
            homeMenuData: some(_result), isLoading: false);
      },
    );
  }
}
