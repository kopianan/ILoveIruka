import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Constants {
  static String _webUrl = "http://iruka.diodeiva.dev";
  static String _apiUrl = "/api/MobileAPI";
  static String _accessKey = 'd78c1a5c-ccbe-4c26-ac08-43ed66c8afb9';

  static String getAccessKey() {
    return _accessKey;
  }

  static String getBaseUrl() {
    return _webUrl + _apiUrl;
  }

  static String getWebUrl() {
    return _webUrl;
  }

  static String getApiUrl() {
    return _apiUrl;
  }

 
}
