import "package:either_dart/either.dart";
import "package:injectable/injectable.dart";
import "../../../../app/failure/failure.dart";
import "../../data/repository/notification_total.repository.dart";
import "../entity/notification_total/notification_total.entity.dart";

@injectable
class NotificationTotalUseCase {
  NotificationTotalUseCase({
    required NotificationTotalRepository getNotificationTotalRepository,
  }) : _getNotificationTotalRepository = getNotificationTotalRepository;

  final NotificationTotalRepository _getNotificationTotalRepository;

  Future<Either<Failure, NotificationTotalEntity>> call(int userID) async {
    final Either<Failure, NotificationTotalEntity>
        getNotificationTotalResponse =
        await _getNotificationTotalRepository(userID);

    return getNotificationTotalResponse;
  }
}
