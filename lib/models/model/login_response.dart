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
  String certificate;
  String description;
  String address;
  String picture;
  bool isActive;
  String createdDate;
  String email;
  String phoneNumber;
  String userName;
  String role;

  User(
      {this.id,
      this.name,
      this.certificate,
      this.description,
      this.address,
      this.picture,
      this.isActive,
      this.createdDate,
      this.email,
      this.phoneNumber,
      this.userName,
      this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    certificate = json['Certificate'];
    description = json['Description'];
    address = json['Address'];
    picture = json['Picture'];
    isActive = json['isActive'];
    createdDate = json['CreatedDate'];
    email = json['Email'];
    phoneNumber = json['PhoneNumber'];
    userName = json['UserName'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Certificate'] = this.certificate;
    data['Description'] = this.description;
    data['Address'] = this.address;
    data['Picture'] = this.picture;
    data['isActive'] = this.isActive;
    data['CreatedDate'] = this.createdDate;
    data['Email'] = this.email;
    data['PhoneNumber'] = this.phoneNumber;
    data['UserName'] = this.userName;
    data['role'] = this.role;
    return data;
  }
}
