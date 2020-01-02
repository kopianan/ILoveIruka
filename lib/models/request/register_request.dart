class RegisterRequest {
  String accessKey;
  String name;
  String email;
  String password;
  String phonenumber;
  String address;
  String description;
  String role;
  String pIC;
  String file;
  String keyFeatures;
  String coverageArea;
  String yearsOfExperience;
  String availability;
  String styling;
  String cliping;
  String trainingYears;
  String trainingCourses;
  String trainingStartDate;

  RegisterRequest(
      {this.accessKey,
      this.name,
      this.email,
      this.password,
      this.phonenumber,
      this.address,
      this.description,
      this.role,
      this.pIC,
      this.file,
      this.keyFeatures,
      this.coverageArea,
      this.yearsOfExperience,
      this.availability,
      this.styling,
      this.cliping,
      this.trainingYears,
      this.trainingCourses,
      this.trainingStartDate});

  RegisterRequest.fromJson(Map<String, dynamic> json) {
    accessKey = json['accessKey'];
    name = json['Name'];
    email = json['Email'];
    password = json['Password'];
    phonenumber = json['Phonenumber'];
    address = json['Address'];
    description = json['Description'];
    role = json['Role'];
    pIC = json['PIC'];
    file = json['file'];
    keyFeatures = json['KeyFeatures'];
    coverageArea = json['CoverageArea'];
    yearsOfExperience = json['YearsOfExperience'];
    availability = json['Availability'];
    styling = json['Styling'];
    cliping = json['Cliping'];
    trainingYears = json['TrainingYears'];
    trainingCourses = json['TrainingCourses'];
    trainingStartDate = json['TrainingStartDate'];
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
    data['PIC'] = this.pIC;
    data['file'] = this.file;
    data['KeyFeatures'] = this.keyFeatures;
    data['CoverageArea'] = this.coverageArea;
    data['YearsOfExperience'] = this.yearsOfExperience;
    data['Availability'] = this.availability;
    data['Styling'] = this.styling;
    data['Cliping'] = this.cliping;
    data['TrainingYears'] = this.trainingYears;
    data['TrainingCourses'] = this.trainingCourses;
    data['TrainingStartDate'] = this.trainingStartDate;
    return data;
  }
}
