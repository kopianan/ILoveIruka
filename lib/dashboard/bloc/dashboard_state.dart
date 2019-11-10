import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DashboardState {}

class InitialDashboardState extends DashboardState {}

// EVENT
class GetEventListLoading extends DashboardState {}

class GetEventListCompleted extends DashboardState {
  final EventsModel response;
  GetEventListCompleted({this.response});
}

class GetEventListError extends DashboardState {
  final String errorMessage;
  GetEventListError(this.errorMessage);
}

// PRODUCT

class GetProductListLoading extends DashboardState {}

class GetProductListCompleted extends DashboardState {
  final ProductsModel response;
  GetProductListCompleted({this.response});
}

class GetProductListError extends DashboardState {
  final String errorMessage;
  GetProductListError(this.errorMessage);
}

//UserByRole
class GetUserByRoleCompleted extends DashboardState {
  final UserGroomersModel response;
  GetUserByRoleCompleted(this.response);
}

class GetUserByRoleLoading extends DashboardState {
  GetUserByRoleLoading();
}

class GetUserByRoleError extends DashboardState {
  final String error;
  GetUserByRoleError(this.error);
}
