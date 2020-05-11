class Constants {
  static String _webUrl = "https://irukacms.com";
  static String _apiUrl = "/api/Mobile";
  static String _accessKey = 'd78c1a5c-ccbe-4c26-ac08-43ed66c8afb9';
  static String _rajaOngkirApi = 'd3378ccdaa201c0b0bffbd673aab43c2';
  static String _rajaOngkirBaseUrl = 'https://api.rajaongkir.com/';

  static String image_devPath = "images/dev_images/";

  static String _userSharedPref = "user_login_data";

  static Map<String, String> _requestHeaders = {
    'Content-type': 'application/json',
    'accessKey': 'd78c1a5c-ccbe-4c26-ac08-43ed66c8afb9'
  };

  static Map<String, String> _rajaOngkirHeader = {'key': _rajaOngkirApi};

  static get userSharedPref => _userSharedPref;
  static get getRajaOngkirHeader => _rajaOngkirHeader;
  static get getRequestHeader => _requestHeaders;
  static get getRajaOngkirApi => _rajaOngkirApi;
  static get getRajaOngkirUrl => _rajaOngkirBaseUrl;

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
