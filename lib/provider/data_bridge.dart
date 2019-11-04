
import 'package:flutter/cupertino.dart';

class DataBridge extends ChangeNotifier{

String _filePath ; 

void setFileName(String name){
  
  this._filePath = name ; 
  notifyListeners(); 

}

String getFileName(){
  return _filePath ; 
}


}