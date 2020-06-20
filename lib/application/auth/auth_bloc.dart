import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/auth/auth_failure.dart';
import 'package:i_love_iruka/domain/auth/i_auth_facade.dart';
import 'package:i_love_iruka/domain/auth/login_data.dart';
import 'package:i_love_iruka/domain/auth/register_data.dart';
import 'package:i_love_iruka/domain/core/user.dart';
import 'package:i_love_iruka/infrastructure/auth/update_data.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;
  AuthBloc(this._iAuthFacade);
  @override
  AuthState get initialState => AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      updateGroomer: (e) async* {
        yield AuthState.onProgress();
        final _result = await _iAuthFacade.updateGroomer(e.user);
        yield AuthState.failOrSuccessUpdateCustomerOption(
            updateCustomerOption: some(_result));
      },
      changeGroomerAvailability: (e) async* {
        yield AuthState.onProgress();
        final _result = await _iAuthFacade.changeAvailability(
            id: e.id, status: e.isAvailable);
        yield AuthState.changeAvailability(some(_result));
      },
      updateCustomer: (e) async* {
        yield AuthState.onProgress();
        final _result = await _iAuthFacade.updateCustomer(e.data, e.image);
        yield AuthState.failOrSuccessUpdateCustomerOption(
            updateCustomerOption: some(_result));
      },
      getUserRoleList: (e) async* {
        yield AuthState.failOrSuccessGetRole(
          options: none(),
          isLoading: true,
        );
        final _result = await _iAuthFacade.getUserRole();
        yield AuthState.failOrSuccessGetRole(
          options: some(_result),
          isLoading: false,
        );
      },
      loginWithEmail: (e) async* {
        yield AuthState.onProgress();
        final _result = await _iAuthFacade.singInUser(e.loginRequestData);
        yield AuthState.failOrSuccessLoginOption(
            failOrSuccessOption: some(_result));
      },
      registerWithEmail: (e) async* {
        yield AuthState.onProgress();
        final _result =
            await _iAuthFacade.registerNewUser(registerData: e.registerData);
        yield AuthState.failOrSuccessLoginOption(
            failOrSuccessOption: some(_result));
      },
    );
  }
}
