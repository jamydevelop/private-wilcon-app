import "package:freezed_annotation/freezed_annotation.dart";

part "notification_total.model.freezed.dart";
part "notification_total.model.g.dart";

//Notif 02
@freezed
class NotificationTotalModel with _$NotificationTotalModel {
  const factory NotificationTotalModel({
    @JsonKey(name: "totalCountUnreadNotification")
    required int totalCountUnreadNotification,
  }) = _NotificationTotalModel;

  factory NotificationTotalModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationTotalModelFromJson(json);
}
