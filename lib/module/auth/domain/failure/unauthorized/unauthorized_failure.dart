import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../../app/failure/failure.dart";

part "unauthorized_failure.freezed.dart";

@freezed
class UnauthorizedFailure extends Failure with _$UnauthorizedFailure {
  const factory UnauthorizedFailure() = _UnauthorizedFailure;
}
