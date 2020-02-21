class LoginRequest {
  String username;
  String password;

  LoginRequest({this.username, this.password});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    username = json['Username'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Username'] = this.username;
    data['Password'] = this.password;
    return data;
  }
}
