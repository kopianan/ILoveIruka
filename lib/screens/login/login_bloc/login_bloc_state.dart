import 'package:i_love_iruka/models/response/login_response.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LoginBlocState {}

class InitialLoginBlocState extends LoginBlocState {}

class LoginLoading extends LoginBlocState {}

class LoginComplete extends LoginBlocState {
  final LoginResponse response;
  LoginComplete({this.response});
}

class LoginError extends LoginBlocState {
  final String errorMessage;
  LoginError(this.errorMessage);
}
