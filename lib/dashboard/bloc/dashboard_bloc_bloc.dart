import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'dashboard_bloc_g.dart';
import 'package:i_love_iruka/data/repository.dart';
import './dashboard_bloc_g.dart';

class DashboardBlocBloc extends Bloc<DashboardEvent, DashboardState> {
  final Repository _repository= Repository();

  DashboardState get initialState => InitialDashboardState();

  @override
  Stream<DashboardState> mapEventToState(
    DashboardEvent event,
  ) async* {
    if (event is GetEventList) {
      yield* _mapGetEventListToState();
    } else if (event is GetProductList) {
      yield* _mapGetProductListToState();
    } else if (event is GetUserByRole) {
      yield* _mapGetUserByRoleToState(event);
    }
  }

  Stream<DashboardState> _mapGetEventListToState() async* {
    try {
      yield GetEventListLoading();
      final eventResponse = await _repository.getEventList();
      if (eventResponse != null) {
        yield GetEventListCompleted(response: eventResponse);
      } else {
        yield GetEventListError("Error");
      }
    } catch (_) {
      yield GetEventListError("Error");
    }
  }

  Stream<DashboardState> _mapGetProductListToState() async* {
    try {
      yield GetProductListLoading();
      final productResponse = await _repository.getProductList();
      if (productResponse != null) {
        yield GetProductListCompleted(response: productResponse);
      } else {
        yield GetProductListError("Error ");
      }
    } catch (_) {
      yield GetProductListError("Error ");
    }
  }

  Stream<DashboardState> _mapGetUserByRoleToState(GetUserByRole event) async* {
    try {
      yield GetUserByRoleLoading();
      final userResponse = await _repository.getGroomerList(event.roleKey);
      if (userResponse != null) {
        yield GetUserByRoleCompleted(userResponse);
       
      } else {
        yield GetUserByRoleError("error");
      }
    } catch (_) {
      yield GetUserByRoleError("error");
    }
  }
}
