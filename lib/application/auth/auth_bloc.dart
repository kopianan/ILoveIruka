import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/i_auth_facade.dart';
import 'package:i_love_iruka/domain/auth/sign_up_request.dart';
import 'package:i_love_iruka/domain/user/role_data_model.dart';
import 'package:i_love_iruka/domain/user/user_data_model.dart';
import 'package:i_love_iruka/infrastructure/auth/update_data.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;
  AuthBloc(this._iAuthFacade) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      changeGroomerAvailability: (e) async* {
        yield AuthState.onProgress();
        final _result = await _iAuthFacade.changeAvailability(
            id: e.id, status: e.isAvailable);
        yield AuthState.changeAvailability(some(_result));
      },
      getUserRoleList: (e) async* {
        yield AuthState.onGetUserRoleList(
          roleOptions: none(),
          isLoading: true,
        );
        final _result = await _iAuthFacade.getUserRole();
        yield AuthState.onGetUserRoleList(
          roleOptions: some(_result),
          isLoading: false,
        );
      },
      loginWithEmail: (e) async* {
        yield AuthState.onLoginOption(true, none());
        final _result = await _iAuthFacade.loginUser(e.username, e.password);
        yield AuthState.onLoginOption(false, some(_result));
      },
      registerWithEmail: (_RegisterWithEmail value) async* {
        yield AuthState.onRegisterUser(isLoading: true, userOption: none());
        final _result =
            await _iAuthFacade.registerNewUser(signUpRequest: value.request);
        yield AuthState.onRegisterUser(
            isLoading: false, userOption: some(_result));
      },
      updateCustomer: (_UpdateCustomer value) async* {},
    );
  }
}
