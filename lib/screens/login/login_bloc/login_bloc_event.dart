import 'package:i_love_iruka/models/request/login_request.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LoginBlocEvent {}


class LoginUser extends LoginBlocEvent{
  final LoginRequest loginData; 
  LoginUser({@required this.loginData}); 

  
}