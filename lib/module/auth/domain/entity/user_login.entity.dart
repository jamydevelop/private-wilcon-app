import "package:freezed_annotation/freezed_annotation.dart";

part "user_login.entity.freezed.dart";

@freezed
class UserLoginEntity with _$UserLoginEntity {
  const factory UserLoginEntity({
    required String emailValue,
    required String passwordValue,
  }) = _UserLoginEntity;
}
