import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_data.freezed.dart';
part 'register_data.g.dart';

@freezed
abstract class RegisterData with _$RegisterData {
  factory RegisterData.registerRequestData({
    @JsonKey(name: "AccessKey") String accessKey,
    @JsonKey(name: "Name") String name,
    @JsonKey(name: "Email") String email,
    @JsonKey(name: "Password") String password,
    @JsonKey(name: "Role") String role,
    @JsonKey(name: "Availability") String availability,
    @JsonKey(name: "Styling") String styling,
    @JsonKey(name: "Cliping") String cliping,
    @JsonKey(name: "TrainingYears") String trainingYears,
  }) = RegisterRequestData;

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}
