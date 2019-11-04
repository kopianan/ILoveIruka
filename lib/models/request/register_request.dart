class RegisterRequest {
  String accessKey;
  String name;
  String email;
  String password;
  String phonenumber;
  String address;
  String description;
  String role;
  String file;

  RegisterRequest(
      {this.accessKey,
      this.name,
      this.email,
      this.password,
      this.phonenumber,
      this.address,
      this.description,
      this.role,
      this.file});

  RegisterRequest.fromJson(Map<String, dynamic> json) {
    accessKey = json['accessKey'];
    name = json['Name'];
    email = json['Email'];
    password = json['Password'];
    phonenumber = json['Phonenumber'];
    address = json['Address'];
    description = json['Description'];
    role = json['Role'];
    file = json['File'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessKey'] = this.accessKey;
    data['Name'] = this.name;
    data['Email'] = this.email;
    data['Password'] = this.password;
    data['Phonenumber'] = this.phonenumber;
    data['Address'] = this.address;
    data['Description'] = this.description;
    data['Role'] = this.role;
    data['File'] = this.file;
    return data;
  }
}
