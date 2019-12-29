import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier {
  String _fullName;
  String _email;
  String _phone;
  String _pic;
  String _address;
  String _password;
  String _description;
  String _photoPath;
  String _province;
  String _city;
  String _yearExperience;
  double _styling = 1.0;
  double _cliping = 1.0;
  String _trainDate;
  String _trainLong;
  String _trainNotes;
  String _repeatPassword;
  String _keyFeatures;
  
  bool _isAvailableHomeGrooming = false ;
  bool _joinTraining = false;

  bool get getJoinTraining => this._joinTraining;

  String get getRepeatPassword => this._repeatPassword;
  String get getFullName => this._fullName;
  String get getEmail => this._email;
  String get getPhone => this._phone;
  String get getPic => this._pic;
  String get getAddress => this._address;
  String get getPassword => this._password;
  String get getDescription => this._description;
  String get getPhotoPath => this._photoPath;
  bool get getIsAvailable => this._isAvailableHomeGrooming;
  String get getProvince => this._province;
  String get getCity => this._city;
  String get getYearExperience => this._yearExperience;
  double get getStyling => this._styling;
  double get getCliping => this._cliping;
  String get getTrainDate => this._trainDate;
  String get getTrainLong => this._trainLong;
  String get getTrainLNotes => this._trainNotes;
  String get getKeyFeatures => this._keyFeatures;

  void setJoinTraining(bool val) {
    this._joinTraining = val;
    notifyListeners();
  }

  setKeyFeatures(String text) {
    this._keyFeatures = text;
    notifyListeners();
  }

  setRepeatPassword(String text) {
    this._repeatPassword = text;
    notifyListeners();
  }

  setProvince(String text) {
    this._fullName = text;
    notifyListeners();
  }

  setCity(String text) {
    this._city = text;
    notifyListeners();
  }

  setYearExperience(String text) {
    this._yearExperience = text;
    notifyListeners();
  }

  setStyling(double text) {
    print(text);
    this._styling = text;
    notifyListeners();
  }

  setCliping(double text) {
    this._cliping = text;
    notifyListeners();
  }

  setTrainDate(String text) {
    this._trainDate = text;
    notifyListeners();
  }

  setTrainLong(String text) {
    this._trainLong = text;
    notifyListeners();
  }

  setTrainNotes(String text) {
    this._trainNotes = text;
    notifyListeners();
  }

  setFullName(String text) {
    print("setFullName");
    print(text);
    this._fullName = text;
    notifyListeners();
  }

  setEmail(String text) {
    this._email = text;
    notifyListeners();
  }

  setPhone(String text) {
    this._phone = text;
    notifyListeners();
  }

  setPic(String text) {
    this._pic = text;
    notifyListeners();
  }

  setPassword(String text) {
    this._password = text;
    notifyListeners();
  }

  setAddress(String text) {
    this._address = text;
    notifyListeners();
  }

  setDescription(String text) {
    this._description = text;
    notifyListeners();
  }

  setPhotoPath(String text) {
    this._photoPath = text;
    notifyListeners();
  }

  setIsAvailable(bool text) {
    this._isAvailableHomeGrooming = text;
    notifyListeners();
  }
}
