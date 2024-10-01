import "package:freezed_annotation/freezed_annotation.dart";
part "user.model.freezed.dart";
part "user.model.g.dart";

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "userId") required int userId,
    @JsonKey(name: "role") required String role,
    @JsonKey(name: "role_ids") required List<String> roleIdList,
  }) = _UserLoginModel;

  // You can omit this method if you don't need deserialization
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
//user login Model
