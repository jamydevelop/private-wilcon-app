import "package:either_dart/either.dart";
import "package:flutter/material.dart";
import "package:injectable/injectable.dart";
import "../../../../app/failure/failure.dart";
import "../../domain/entity/notification_list/notification_list.entity.dart";
import "../data_source/notification_list.data_source.dart";
import "../mapper/failure_notification_list.mapper.dart";
import "../model/notification_list.model.dart";

@injectable
class GetNotificationListRepository {
  GetNotificationListRepository({
    required GetNotificationListDataSource getNotificationListDataSource,
    required FailureNotificationListMapper failureNotificationListMapper,
  })  : _getNotificationListDataSource = getNotificationListDataSource,
        _failureNotificationListMapper = failureNotificationListMapper;

  final GetNotificationListDataSource _getNotificationListDataSource;
  final FailureNotificationListMapper _failureNotificationListMapper;

  Future<Either<Failure, List<NotificationEntity>>> call(
      int userID, int page) async {
    try {
      debugPrint("pinging!");
      late List<NotificationListModel> model_list;
      try {
        model_list = await _getNotificationListDataSource(userID, page);
      } catch (ex, trace) {
        debugPrint("$ex $trace");
      }

      final List<NotificationEntity> entityList = <NotificationEntity>[];

      for (final NotificationListModel e in model_list) {
        entityList.add(NotificationEntity(
            createdAt: e.createdAt,
            description: e.description,
            checklistId: e.checklistId,
            status: e.status));
      }

      return Right<Failure, List<NotificationEntity>>(entityList);
    } catch (exception) {
      //debugPrint(exception);
      return Left<Failure, List<NotificationEntity>>(
          _failureNotificationListMapper(exception));
    }
  }
}
