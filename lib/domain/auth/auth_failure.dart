import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.badRequest() = _BadRequest;
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.notFound() = _NotFound;
  const factory AuthFailure.defaultError() = _DefaultError;
}
