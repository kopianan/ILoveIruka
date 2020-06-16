import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart'; 
@freezed
abstract class User with _$User {
  factory User(
      {@JsonKey(name: "Id") String id,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Description") String description,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "PhoneNumber") String phoneNumber,
      @JsonKey(name: "Picture") String picture,
      @JsonKey(name: "CreatedDate") String createdDate,
      @JsonKey(name: "PIC") String pIC,
      @JsonKey(name: "KeyFeatures") String keyFeatures,
      @JsonKey(name: "CoverageArea") String coverageArea,
      @JsonKey(name: "YearsOfExperience") int yearsOfExperience,
      @JsonKey(name: "Availability") bool availability,
      @JsonKey(name: "Styling") int styling,
      @JsonKey(name: "Clipping") int clipping,
      @JsonKey(name: "TrainingStartDate") String trainingStartDate,
      @JsonKey(name: "TrainingYears") int trainingYears,
      @JsonKey(name: "TrainingCourses") String trainingCourses,
      @JsonKey(name: "Show") bool show,
      @JsonKey(name: "Certificate") String certificate,
      @JsonKey(name: "Role") String role,
      @JsonKey(name: "IsActive") bool isActive}) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>  _$UserFromJson(json) ; 
}
