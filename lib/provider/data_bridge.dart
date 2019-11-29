
import 'package:flutter/cupertino.dart';
import 'package:i_love_iruka/models/model/login_response.dart';

class DataBridge extends ChangeNotifier{

String _filePath ; 
LoginResponse _userData ; 


void setUserData(LoginResponse userData){
  this._userData = userData ; 
  notifyListeners(); 
}

LoginResponse getUserData(){
  return this._userData; 
}

void setFileName(String name){
  
  this._filePath = name ; 
  notifyListeners(); 

}

String getFileName(){
  return _filePath ; 
}


}