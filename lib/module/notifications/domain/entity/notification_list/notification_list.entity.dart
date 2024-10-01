import "package:freezed_annotation/freezed_annotation.dart";

part "notification_list.entity.freezed.dart";

@freezed
class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required String createdAt,
    required String description,
    required int checklistId,
    required String status,
  }) = _NotificationEntity;
}
