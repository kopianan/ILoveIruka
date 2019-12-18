class EditRequest {
  String accessKey;
  String name;
  String phonenumber;
  String address;
  String description;
  String id ; 
  String pic; 
  String file;

  EditRequest(
      {this.accessKey,
      this.name,
      this.phonenumber,
      this.address,
      this.description,
      this.id,
      this.pic,
      this.file});

  EditRequest.fromJson(Map<String, dynamic> json) {
    accessKey = json['accessKey'];
    name = json['Name'];
    phonenumber = json['Phonenumber'];
    address = json['Address'];
    description = json['Description'];
    id = json['Id'];
    pic = json['pic']; 
    file = json['File'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessKey'] = this.accessKey;
    data['Name'] = this.name;
    data['Phonenumber'] = this.phonenumber;
    data['Address'] = this.address;
    data['Description'] = this.description;
    data['Id'] = this.id;
    data['PIC'] = this.pic; 
    data['File'] = this.file;
    return data;
  }
}
