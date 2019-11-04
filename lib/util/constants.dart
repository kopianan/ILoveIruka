class Constants {
  String _webUrl = "http://iruka.diodeiva.dev";
  String _apiUrl = "/api/MobileAPI";
  String _accessKey = 'd78c1a5c-ccbe-4c26-ac08-43ed66c8afb9';

  String getAccessKey() {
    return _accessKey;
  }

  String getBaseUrl() {
    return _webUrl + _apiUrl;
  }
}
