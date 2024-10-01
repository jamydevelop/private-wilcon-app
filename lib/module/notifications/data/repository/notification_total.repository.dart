import "package:either_dart/either.dart";
import "package:injectable/injectable.dart";

import "../../../../app/failure/failure.dart";
import "../../../../app/failure/unhandled/unhandled.failure.dart";
import "../../domain/entity/notification_total/notification_total.entity.dart";

import "../data_source/notification_total.data_source.dart";
import "../model/notification_total.model.dart";

@injectable
class NotificationTotalRepository {
  NotificationTotalRepository({
    required NotificationTotalDataSource getNotificationTotalDataSource,
  }) : _getNotificationTotalDataSource = getNotificationTotalDataSource;

  final NotificationTotalDataSource _getNotificationTotalDataSource;

  Future<Either<Failure, NotificationTotalEntity>> call(int userId) async {
    try {
      final NotificationTotalModel notificationTotalModel =
          await _getNotificationTotalDataSource(userId);

      final NotificationTotalEntity NotifTotalEntity = NotificationTotalEntity(
          totalCountUnreadNotification:
              notificationTotalModel.totalCountUnreadNotification);

      return Right<Failure, NotificationTotalEntity>(NotifTotalEntity);
    } catch (exception) {
      return const Left<Failure, NotificationTotalEntity>(UnhandledFailure());
    }
  }
}
