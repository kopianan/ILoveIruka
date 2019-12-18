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
  String phoneNumber;
  String description;
  String password;
  String confirmPassword;
  int internalRoleEnum;
  int endClientEnum;
  String picture;
  String base64URL;
  String certificate;
  String role;
  String base64URLCertificate;
  String createdDate;
  String pIC;
  bool show;

  ListUser(
      {this.id,
      this.email,
      this.name,
      this.address,
      this.phoneNumber,
      this.description,
      this.password,
      this.confirmPassword,
      this.internalRoleEnum,
      this.endClientEnum,
      this.picture,
      this.base64URL,
      this.certificate,
      this.role,
      this.base64URLCertificate,
      this.createdDate,
      this.pIC,
      this.show});

  ListUser.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    email = json['Email'];
    name = json['Name'];
    address = json['Address'];
    phoneNumber = json['PhoneNumber'];
    description = json['Description'];
    password = json['Password'];
    confirmPassword = json['ConfirmPassword'];
    internalRoleEnum = json['InternalRoleEnum'];
    endClientEnum = json['EndClientEnum'];
    picture = json['Picture'];
    base64URL = json['Base64URL'];
    certificate = json['Certificate'];
    role = json['Role'];
    base64URLCertificate = json['Base64URLCertificate'];
    createdDate = json['CreatedDate'];
    pIC = json['PIC'];
    show = json['Show'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Email'] = this.email;
    data['Name'] = this.name;
    data['Address'] = this.address;
    data['PhoneNumber'] = this.phoneNumber;
    data['Description'] = this.description;
    data['Password'] = this.password;
    data['ConfirmPassword'] = this.confirmPassword;
    data['InternalRoleEnum'] = this.internalRoleEnum;
    data['EndClientEnum'] = this.endClientEnum;
    data['Picture'] = this.picture;
    data['Base64URL'] = this.base64URL;
    data['Certificate'] = this.certificate;
    data['Role'] = this.role;
    data['Base64URLCertificate'] = this.base64URLCertificate;
    data['CreatedDate'] = this.createdDate;
    data['PIC'] = this.pIC;
    data['Show'] = this.show;
    return data;
  }
}
