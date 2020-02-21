class EditRequest {
  String accessKey;
  String name;
  String phonenumber;
  String address;
  String description;
  String iD;
  String pic;
  String file;
  String keyFeatures;
  String coverageArea;
  int yearsOfExperience;
  bool availability;
  int styling;
  int cliping;
  String trainingStartDate;
  int trainingYears;
  String trainingCourses;
  bool show;

  EditRequest(
      {this.address,
      this.availability,
      this.cliping,
      this.coverageArea,
      this.keyFeatures,
      this.name,
      this.styling,
      this.trainingCourses,
      this.trainingStartDate,
      this.trainingYears,
      this.yearsOfExperience,
      this.accessKey,
      this.description,
      this.file,
      this.iD,
      this.phonenumber,
      this.pic,
      this.show});

  @override
  String toString() {
    return 'EditRequest accessKey: $accessKey, name: $name, phonenumber: $phonenumber, address: $address, description: $description, iD: $iD, pic: $pic, file: $file, keyFeatures: $keyFeatures, coverageArea: $coverageArea, yearsOfExperience: $yearsOfExperience, availability: $availability, styling: $styling, cliping: $cliping, trainingStartDate: $trainingStartDate, trainingYears: $trainingYears, trainingCourses: $trainingCourses, show: $show';
  }
}
