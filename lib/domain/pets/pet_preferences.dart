import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_preferences.freezed.dart';
part 'pet_preferences.g.dart';

@freezed
abstract class PetPreferences with _$PetPreferences {
  factory PetPreferences({
    String label,
    bool status,
  }) = _PetPreferences;

  factory PetPreferences.fromJson(Map<String, dynamic> json) =>
      _$PetPreferencesFromJson(json);
}
