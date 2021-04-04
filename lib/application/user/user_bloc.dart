import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/user/i_user_facade.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  IUserFacade _iUserFacade;
  UserBloc(this._iUserFacade) : super(_Initial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(
      started: (e) async* {},
      changeProfilePhoto: (e) async* {
        yield UserState.uploadProfilePhoto(none(), true);
        final _result = await _iUserFacade.uploadPhoto(e.file);
        yield UserState.uploadProfilePhoto(some(_result), false);
      },
    );
  }
}
