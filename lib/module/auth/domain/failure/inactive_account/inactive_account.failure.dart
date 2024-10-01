import "package:freezed_annotation/freezed_annotation.dart";

import "../../../../../app/failure/failure.dart";

part "inactive_account.failure.freezed.dart";

@freezed
class InactiveAccountFailure extends Failure with _$InactiveAccountFailure {
  const factory InactiveAccountFailure() = _InactiveAccountFailure;
}
