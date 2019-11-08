import 'package:meta/meta.dart';

@immutable
abstract class DashboardEvent {}



class GetEventList extends DashboardEvent{
   
  GetEventList();
}

class GetProductList extends DashboardEvent{
  GetProductList() ; 
}
