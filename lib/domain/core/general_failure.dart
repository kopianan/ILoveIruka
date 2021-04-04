import 'package:freezed_annotation/freezed_annotation.dart';
part 'general_failure.freezed.dart';

@freezed
abstract class GeneralFailure with _$GeneralFailure {
  const factory GeneralFailure(String error) = _GeneralFailure;
}
