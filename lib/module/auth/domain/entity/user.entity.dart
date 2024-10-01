import "package:freezed_annotation/freezed_annotation.dart";

part "user.entity.freezed.dart";

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int userId,
    required String role,
    required List<String> roleIdList,
  }) = _UserEntity;
}
