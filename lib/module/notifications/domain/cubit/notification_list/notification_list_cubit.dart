import "package:bloc/bloc.dart";
import "package:either_dart/either.dart";
import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:injectable/injectable.dart";
import "package:shared_preferences/shared_preferences.dart";
import "../../../../../app/failure/failure.dart";
import "../../entity/notification_list/notification_list.entity.dart";
import "../../use_case/notification_list.use_case.dart";

part "notification_list_state.dart";
part "notification_list_cubit.freezed.dart";

@injectable
class NotificationListCubit extends Cubit<NotificationListState> {
  NotificationListCubit({
    required NotificationListUseCase notificationListUseCase,
  })  : _notificationListUseCase = notificationListUseCase,
        super(const NotificationListState.initial());

  final NotificationListUseCase _notificationListUseCase;

  final Future<SharedPreferencesWithCache> _prefs =
      SharedPreferencesWithCache.create(
          cacheOptions: const SharedPreferencesWithCacheOptions(
              allowList: <String>{"userId"}));

  Future<int> getUserID() async {
    final SharedPreferencesWithCache prefs = await _prefs;
    return prefs.getInt("userId") ?? -1;
  }

  Future<List<NotificationEntity>> fetch() async {
    emit(const NotificationListState.loading());

    final int userId = await getUserID();
    debugPrint("zz hero");
    final Either<Failure, List<NotificationEntity>> response =
        await _notificationListUseCase(userId, 1);
    debugPrint("zz apple");

    if (response.isLeft) {
      emit(const NotificationListState.error());
    }

    if (response.isRight) {
      debugPrint("emmitting correct");
      emit(NotificationListState.fulfilled(list: response.right));
      debugPrint("sending correct");
    }

    debugPrint("black sand");
    return response.right;
  }
  // // Add any methods to use _notificationUseCase if needed
}
