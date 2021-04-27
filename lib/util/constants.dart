class Constants {
  //STORAGE

  String _storageBox = "iruka_storage";
  String _userKey = "user_sotrage_key";
  String _memberKey = "member_storage_key";
  String get getIrukaStorage => this._storageBox;
  String get getUserKey => this._userKey;
  String get getMemberKey => this._memberKey;

  static String _webUrl = "https://irukacms.com";
  static String _apiUrl = "/api/Mobile";
  static String _accessKey = 'd78c1a5c-ccbe-4c26-ac08-43ed66c8afb9';
  static String _rajaOngkirApi = 'd3378ccdaa201c0b0bffbd673aab43c2';
  static String _rajaOngkirBaseUrl = 'https://api.rajaongkir.com/';

  // static String _stagingUrl = 'http://api-staging.irukacms.com:5005';
  static String _stagingUrl = 'http://api-staging.irukacms.com:5000';

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

  static String getStagingUrl() {
    return _stagingUrl;
  }

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
