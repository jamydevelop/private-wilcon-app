import "package:freezed_annotation/freezed_annotation.dart";

import "../failure.dart";

part "unhandled.failure.freezed.dart";

@freezed
class UnhandledFailure extends Failure with _$UnhandledFailure {
  const factory UnhandledFailure({
    String? referenceCode,
  }) = _UnhandledFailure;
}
