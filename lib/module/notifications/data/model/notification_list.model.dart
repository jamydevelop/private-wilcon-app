import "package:freezed_annotation/freezed_annotation.dart";

part "notification_list.model.freezed.dart";
part "notification_list.model.g.dart";

//Notif 02
@freezed
class NotificationListModel with _$NotificationListModel {
  const factory NotificationListModel({
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "checklistId") required int checklistId,
    @JsonKey(name: "status") required String status,
  }) = _RandomStringModel;

  factory NotificationListModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationListModelFromJson(json);
}
