import 'dart:io';

import 'package:i_love_iruka/features/network/dashboard_api_interface.dart';
import 'package:i_love_iruka/features/network/dashboard_failure.dart';
import 'package:i_love_iruka/models/model/event_model.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';
import 'package:i_love_iruka/models/request/user_by_role_request.dart';
import 'package:i_love_iruka/users/network/user_failure.dart';

class DashboardStore {
  DashboardApiInterface _apiInterface = DashboardApiInterface();

  UserGroomersModel _userGroomersModel;
  Failure _failure;
  EventsModel _eventsModel;
  ProductsModel _productsModel;
  int _memberPoint;
  DashboardFailure _dashboardFailure;

  Failure get getFailure => this._failure;
  UserGroomersModel get getUserGroomerModel => _userGroomersModel;
  EventsModel get getEventsModel => _eventsModel;
  ProductsModel get getProductsList => _productsModel;
  DashboardFailure get getDashboardFailure => this._dashboardFailure;
  int get getPointAndLastTransaction => _memberPoint;

  void callGetPointAndLastTransaction(String id) async {
    try {
      _memberPoint = await _apiInterface.getPointAndTransaction(id);
    } on DashboardFailure catch (f) {
      throw f; 
    }
  }

  void callUserGroomerModel(UserByRoleRequest request) async {
    try {
      _userGroomersModel = await _apiInterface.getGroomerList(request);
    } on Failure catch (f) {
      
      print(f.message);
      _failure = f;
    }
  }

  void callEventList() async {
    try {
      _eventsModel = await _apiInterface.getEventListData();
    } on DashboardFailure catch (f) {
      throw f ; 
    }
  }

  void callProductList() async {
    try {
      _productsModel = await _apiInterface.getProductListData();
    } on DashboardFailure catch (f) {
      throw f ; 
    } 
  }
}
