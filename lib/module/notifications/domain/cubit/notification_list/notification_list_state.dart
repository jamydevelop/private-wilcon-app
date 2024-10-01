part of "notification_list_cubit.dart";

@freezed
class NotificationListState with _$NotificationListState {
  const factory NotificationListState.initial() = _Initial;
  const factory NotificationListState.loading() = _Loading;
  const factory NotificationListState.error() = _Error;
  const factory NotificationListState.fulfilled(
      {required List<NotificationEntity> list}) = _Fulfilled;
  // const factory NotificationState.initial() = _Initial;
}
