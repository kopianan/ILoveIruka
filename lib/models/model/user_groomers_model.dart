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
  String description;
  String address;
  String phoneNumber;
  String picture;
  String createdDate;
  String pIC;
  String keyFeatures;
  String coverageArea;
  int yearsOfExperience;
  bool availability;
  int styling;
  int clipping;
  String trainingStartDate;
  int trainingYears;
  String trainingCourses;
  bool show;
  String certificate;
  String role;
  bool isActive;

  ListUser(
      {this.id,
      this.email,
      this.name,
      this.description,
      this.address,
      this.phoneNumber,
      this.picture,
      this.createdDate,
      this.pIC,
      this.keyFeatures,
      this.coverageArea,
      this.yearsOfExperience,
      this.availability,
      this.styling,
      this.clipping,
      this.trainingStartDate,
      this.trainingYears,
      this.trainingCourses,
      this.show,
      this.certificate,
      this.role,
      this.isActive});

  ListUser.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    email = json['Email'];
    name = json['Name'];
    description = json['Description'];
    address = json['Address'];
    phoneNumber = json['PhoneNumber'];
    picture = json['Picture'];
    createdDate = json['CreatedDate'];
    pIC = json['PIC'];
    keyFeatures = json['KeyFeatures'];
    coverageArea = json['CoverageArea'];
    yearsOfExperience = json['YearsOfExperience'];
    availability = json['Availability'];
    styling = json['Styling'];
    clipping = json['Clipping'];
    trainingStartDate = json['TrainingStartDate'];
    trainingYears = json['TrainingYears'];
    trainingCourses = json['TrainingCourses'];
    show = json['Show'];
    certificate = json['Certificate'];
    role = json['Role'];
    isActive = json['IsActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Email'] = this.email;
    data['Name'] = this.name;
    data['Description'] = this.description;
    data['Address'] = this.address;
    data['PhoneNumber'] = this.phoneNumber;
    data['Picture'] = this.picture;
    data['CreatedDate'] = this.createdDate;
    data['PIC'] = this.pIC;
    data['KeyFeatures'] = this.keyFeatures;
    data['CoverageArea'] = this.coverageArea;
    data['YearsOfExperience'] = this.yearsOfExperience;
    data['Availability'] = this.availability;
    data['Styling'] = this.styling;
    data['Clipping'] = this.clipping;
    data['TrainingStartDate'] = this.trainingStartDate;
    data['TrainingYears'] = this.trainingYears;
    data['TrainingCourses'] = this.trainingCourses;
    data['Show'] = this.show;
    data['Certificate'] = this.certificate;
    data['Role'] = this.role;
    data['IsActive'] = this.isActive;
    return data;
  }
}
