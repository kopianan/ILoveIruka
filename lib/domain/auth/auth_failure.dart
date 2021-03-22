import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.responseError({String errorMessage}) =
      _ResponseError;
  const factory AuthFailure.serverError(String errorMessage) = _ServerError;
}
