import 'dart:async';
import 'package:i_love_iruka/domain/auth/i_auth_facade.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:i_love_iruka/models/model/login_response.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  IAuthFacade _iAuthFacade;
  AuthenticationBloc(this._iAuthFacade) : super(AuthenticationState.initial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(signOut: (e) async* {
      final _result = await _iAuthFacade.signOut();
      yield _result.fold(
        (l) => AuthenticationState.signOutState(isSignOut: false),
        (r) => AuthenticationState.signOutState(isSignOut: true),
      );
    }, checkAuthentication: (e) async* {
      final response = _iAuthFacade.checkAuthentcation();
      yield response.fold(
        (l) => AuthenticationState.unAuthenticated(),
        (r) => AuthenticationState.authenticated(user: r),
      );
    });
  }
}
