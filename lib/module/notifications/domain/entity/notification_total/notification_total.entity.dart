import "package:freezed_annotation/freezed_annotation.dart";

part "notification_total.entity.freezed.dart";

@freezed
class NotificationTotalEntity with _$NotificationTotalEntity {
  const factory NotificationTotalEntity({
    required int totalCountUnreadNotification,
  }) = _NotificationEntity;
}
