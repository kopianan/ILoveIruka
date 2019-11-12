class UserGroomersModel {
  List<ListUser> listUser;

  UserGroomersModel({this.listUser});

  UserGroomersModel.fromJson(Map<String, dynamic> json) {
    if (json['listUser'] != null) {
      listUser = new List<ListUser>();
      json['listUser'].forEach((v) {
        listUser.add(new ListUser.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listUser != null) {
      data['listUser'] = this.listUser.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListUser {
  String id;
  String email;
  String name;
  String address;
  String picture;
  String phoneNumber;
  String description;
  Null password;
  int roleMenuLists;
  String certificate;

  ListUser(
      {this.id,
      this.email,
      this.name,
      this.address,
      this.picture,
      this.phoneNumber,
      this.description,
      this.password,
      this.roleMenuLists,
      this.certificate});

  ListUser.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    email = json['Email'];
    name = json['Name'];
    address = json['Address'];
    picture = json['Picture'];
    phoneNumber = json['PhoneNumber'];
    description = json['Description'];
    password = json['Password'];
    roleMenuLists = json['RoleMenuLists'];
    certificate = json['Certificate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Email'] = this.email;
    data['Name'] = this.name;
    data['Address'] = this.address;
    data['Picture'] = this.picture;
    data['PhoneNumber'] = this.phoneNumber;
    data['Description'] = this.description;
    data['Password'] = this.password;
    data['RoleMenuLists'] = this.roleMenuLists;
    data['Certificate'] = this.certificate;
    return data;
  }
}
