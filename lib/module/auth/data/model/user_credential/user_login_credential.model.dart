import "package:freezed_annotation/freezed_annotation.dart";

part "user_login_credential.model.freezed.dart";
part "user_login_credential.model.g.dart";

@freezed
class UserLoginCredentialModel with _$UserLoginCredentialModel {
  const factory UserLoginCredentialModel({
    @JsonKey(name: "email") required String emailValue,
    @JsonKey(name: "password") required String passwordValue,
  }) = _UserLoginModel;

  // You can omit this method if you don't need deserialization
  factory UserLoginCredentialModel.fromJson(Map<String, dynamic> json) =>
      _$UserLoginCredentialModelFromJson(json);

  // Make sure to annotate this with @override
}
//user login Model
