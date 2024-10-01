import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../../app/failure/failure.dart";

part "invalid_login.failure.freezed.dart";

@freezed
class InvalidLoginFailure extends Failure with _$InvalidLoginFailure {
  const factory InvalidLoginFailure() = _InvalidLoginFailure;
}
