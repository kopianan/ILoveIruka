import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:i_love_iruka/data/repository.dart';
import './dashboard_bloc_g.dart';

class DashboardBlocBloc extends Bloc<DashboardEvent, DashboardState> {
  Repository _repository = Repository() ; 
  @override
  DashboardState get initialState => InitialDashboardState();

  @override
  Stream<DashboardState> mapEventToState(
    DashboardEvent event,
  ) async* {
    
     if (event is GetEventList) {
      yield GetEventListLoading();
      final eventResponse = await _repository.getEventList();
      if (eventResponse != null) {
        yield GetEventListCompleted(response: eventResponse);
      } else {
        yield GetEventListError("Error");
      }
   
  }

  if(event is GetProductList){
    yield GetProductListLoading();
    final productResponse = await _repository.getProductList(); 
    if(productResponse != null){
      yield GetProductListCompleted(response: productResponse); 
    }else {
      yield GetProductListError("Error ");
    }
  }

  if(event is GetUserByRole){
    yield GetUserByRoleLoading(); 
    final userResponse = await _repository.getGroomerList(event.roleKey); 
    // print(userResponse.toJson().toString() + "INI GROOMER"); 
    if(userResponse != null){
      yield GetUserByRoleCompleted(userResponse); 
    }else{
      yield GetUserByRoleError("error"); 
    }
  }

}
}
