import "package:bloc/bloc.dart";
import "package:either_dart/either.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:injectable/injectable.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../../../../../../app/failure/failure.dart";
import "../../entity/notification_total/notification_total.entity.dart";
import "../../use_case/notification_total.use_case.dart";

part "notification_total_state.dart";
part "notification_total_cubit.freezed.dart";

@injectable
class NotificationTotalCubit extends Cubit<NotificationTotalState> {
  NotificationTotalCubit({
    required NotificationTotalUseCase notificationTotalUseCase,
  })  : _notificationTotalUseCase = notificationTotalUseCase,
        super(const NotificationTotalState.initial());

  final NotificationTotalUseCase _notificationTotalUseCase;

  final Future<SharedPreferencesWithCache> _prefs =
      SharedPreferencesWithCache.create(
          cacheOptions: const SharedPreferencesWithCacheOptions(
              allowList: <String>{"userId"}));

  Future<int> getUserID() async {
    final SharedPreferencesWithCache prefs = await _prefs;
    return prefs.getInt("userId") ?? -1;
  }

  Future<void> fetch() async {
    emit(const NotificationTotalState.loading());

    final int userId = await getUserID();
    final Either<Failure, NotificationTotalEntity> response =
        await _notificationTotalUseCase(userId);

    if (response.isLeft) {
      emit(const NotificationTotalState.error());
    } else {
      // Access the totalCountUnreadNotification
      final int totalCountUnreadNotification =
          response.right.totalCountUnreadNotification;

      emit(NotificationTotalState.fulfilled(
          totalCountUnreadNotification: totalCountUnreadNotification));
    }
  }
}
