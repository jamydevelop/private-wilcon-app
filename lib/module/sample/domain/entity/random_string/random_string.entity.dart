import "package:freezed_annotation/freezed_annotation.dart";

part "random_string.entity.freezed.dart";

@freezed
class RandomStringEntity with _$RandomStringEntity {
  const factory RandomStringEntity({
    required String value,
  }) = _RandomStringEntity;
}
