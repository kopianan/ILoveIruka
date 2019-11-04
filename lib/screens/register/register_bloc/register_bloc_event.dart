import 'package:i_love_iruka/models/request/register_request.dart';
import 'package:meta/meta.dart';

@immutable
abstract class RegisterBlocEvent {}

class RegisterUser extends RegisterBlocEvent{
  final RegisterRequest registerData; 
  RegisterUser({@required this.registerData}); 

  
}