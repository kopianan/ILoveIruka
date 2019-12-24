import 'package:flutter/cupertino.dart';
import 'package:i_love_iruka/models/model/get_city_model.dart'as city;
import 'package:i_love_iruka/models/model/get_province_model.dart' as province;
import 'package:i_love_iruka/models/model/login_response.dart';
import 'package:i_love_iruka/models/model/product_model.dart';
import 'package:i_love_iruka/models/model/roles_model.dart';
import 'package:i_love_iruka/models/model/user_groomers_model.dart';

class DataBridge extends ChangeNotifier {
  String _filePath;
  LoginResponse _userData;
  RoleList _roleList;
  ProductList _productList;
  ListUser _listUser;
  String _totalPoint;
  String _currentPathPhoto;
  int _pageIndex = 0;

  city.Results _cityResult = null; 
  city.Rajaongkir _cityData ; 

  province.Rajaongkir _provinceData ; 


  void setCityResults(city.Results city){
    this._cityResult = city ; 
    notifyListeners(); 
  }

  city.Results get getCityResults => (this._cityResult == null)? null :  this._cityResult; 


  void setProvinceData(province.Rajaongkir province){
    this._provinceData = province;
    print(" provider");  
    print(province.toJson()); 
    // notifyListeners() ; 
  }

 province.Rajaongkir get getProvinceData => this._provinceData; 

 
  void setCityData(city.Rajaongkir city){
    this._cityData = city; 
    notifyListeners() ; 
  }

 city.Rajaongkir get getCityData => this._cityData; 




  void setPageIndex(int index) {
    this._pageIndex = index;
    notifyListeners();
  }

  int get getPageIndex => this._pageIndex;

  void setCurrentPhoto(String path) {
    print("current Photo setted");
    this._currentPathPhoto = path;
    notifyListeners();
  }

  String get getCurrentPhoto => this._currentPathPhoto;

  void setTotalPoint(String point) {
    this._totalPoint = point;
    notifyListeners();
  }

  String get getTotalPoint => this._totalPoint;

  void setCurrentSelectedGroomer(ListUser listUser) {
    this._listUser = listUser;
  }

  ListUser get getCurrentSelectedGroomer => this._listUser;

  void setProductList(ProductList productList) {
    this._productList = productList;
  }

  ProductList get getProductList => this._productList;

  void setRoleList(RoleList roleList) {
    this._roleList = roleList;
    notifyListeners();
  }

  RoleList getRoleList() {
    if (this._roleList == null)
      return RoleList(name: null);
    else
      return this._roleList;
  }

  void setUserData(LoginResponse userData) {
    this._userData = userData;
    notifyListeners();
  }

  LoginResponse getUserData() {
    return this._userData;
  }

  void setFileName(String name) {
    this._filePath = name;
    notifyListeners();
  }

  String getFileName() {
    return _filePath;
  }
}
