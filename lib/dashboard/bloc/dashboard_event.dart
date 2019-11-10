import 'package:i_love_iruka/models/request/user_by_role_request.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DashboardEvent {}



class GetEventList extends DashboardEvent{
   
  GetEventList();
}

class GetProductList extends DashboardEvent{
  GetProductList() ; 
}

class GetUserByRole extends DashboardEvent{
  final UserByRoleRequest roleKey ; 
  GetUserByRole(this.roleKey); 
}
