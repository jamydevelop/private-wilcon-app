import "package:freezed_annotation/freezed_annotation.dart";

part "random_string.model.freezed.dart";
part "random_string.model.g.dart";

@freezed
class RandomStringModel with _$RandomStringModel {
  const factory RandomStringModel({
    @JsonKey(name: "randomString") required String value,
  }) = _RandomStringModel;

  factory RandomStringModel.fromJson(Map<String, dynamic> json) =>
      _$RandomStringModelFromJson(json);
}
