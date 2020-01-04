import 'package:meta/meta.dart';

@immutable
abstract class RegisterBlocState {}

class InitialRegisterBlocState extends RegisterBlocState {}

class RegisterLoading extends RegisterBlocState {}

class RegisterComplete extends RegisterBlocState {
  final dynamic response;
  RegisterComplete({this.response});
}

class RegisterError extends RegisterBlocState {
  final String errorMessage;
  RegisterError(this.errorMessage);
}
