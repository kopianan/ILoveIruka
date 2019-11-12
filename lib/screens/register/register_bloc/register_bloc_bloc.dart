import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:i_love_iruka/data/repository.dart';
import 'package:i_love_iruka/screens/register/register_bloc/register_bloc_g.dart';

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
     print(registerResponse.toString() + "RESPONSE");
      if (registerResponse != null) {
        print("registerreponse");
        yield RegisterComplete(response :  "complte");
      } else {
        yield RegisterError("Error");
      }
    }
  }
}
