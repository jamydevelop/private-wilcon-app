import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../../app/failure/failure.dart";

part "invalid_role.failure.freezed.dart";

@freezed
class InvalidRoleFailure extends Failure with _$InvalidRoleFailure {
  const factory InvalidRoleFailure() = _InvalidRoleFailure;
}
