import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'login_bloc_g.dart';

class LoginBlocBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  final _repository = Repository();

  @override
  LoginBlocState get initialState => InitialLoginBlocState();

  @override
  Stream<LoginBlocState> mapEventToState(
    LoginBlocEvent event,
  ) async* {
    if (event is LoginUser) {
      yield LoginLoading();
      final loginResponse = await _repository.loginUserByEmail(event.loginData);
      if (loginResponse.user != null) {
        yield LoginComplete(response: loginResponse);
      } else {
        yield LoginError("Error");
      }
    }
  }
}
