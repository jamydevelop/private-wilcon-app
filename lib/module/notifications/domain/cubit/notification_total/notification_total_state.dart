part of "notification_total_cubit.dart";

@freezed
class NotificationTotalState with _$NotificationTotalState {
  const factory NotificationTotalState.initial() = _Initial;
  const factory NotificationTotalState.loading() = _Loading;
  const factory NotificationTotalState.error() = _Error;
  const factory NotificationTotalState.fulfilled({
    required int totalCountUnreadNotification,
  }) = _Fulfilled;
}
