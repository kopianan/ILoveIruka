import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_g.dart';
import 'package:i_love_iruka/util/shared_pref.dart';

class RegisterBlocBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  Repository _repository = Repository();
  @override
  RegisterBlocState get initialState => InitialRegisterBlocState();

  @override
  Stream<RegisterBlocState> mapEventToState(
    RegisterBlocEvent event,
  ) async* {
    if (event is RegisterUser) {
      yield RegisterLoading();
      final registerResponse =
          await _repository.registerUserByEmail(event.registerData);
      if (registerResponse != null) {
        await SharedPref().saveLoginData(registerResponse);
        yield RegisterComplete(response: "complete");
      } else {
        yield RegisterError("Error");
      }
    }
  }
}
