import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_pref.freezed.dart';
part 'pet_pref.g.dart';

@freezed
abstract class PetPref with _$PetPref {
  factory PetPref({
    @required String name,
    @required String code,
    bool isActived,
  }) = _PetPref;

  factory PetPref.fromJson(Map<String, dynamic> json) =>
      _$PetPrefFromJson(json);
}
