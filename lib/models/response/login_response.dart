class LoginResponse {
  User user;

  LoginResponse({this.user});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['User'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  String id;
  String name;
  String role;

  User({this.id, this.name, this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['role'] = this.role;
    return data;
  }
}
