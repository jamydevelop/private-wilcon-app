import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../../app/failure/failure.dart";

part "unhandled_error.failure.freezed.dart";

@freezed
class UnhandledErrorFailure extends Failure with _$UnhandledErrorFailure {
  const factory UnhandledErrorFailure() = _UnhandledErrorFailure;
}
