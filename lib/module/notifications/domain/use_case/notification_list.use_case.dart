import "package:either_dart/either.dart";
import "package:injectable/injectable.dart";
import "../../../../app/failure/failure.dart";
import "../../data/repository/notification_list.repository.dart";
import "../entity/notification_list/notification_list.entity.dart";

@injectable
class NotificationListUseCase {
  NotificationListUseCase({
    required GetNotificationListRepository getNotificationListRepository,
  }) : _getNotificationListRepository = getNotificationListRepository;

  final GetNotificationListRepository _getNotificationListRepository;

  Future<Either<Failure, List<NotificationEntity>>> call(
      int userID, int page) async {
    final Either<Failure, List<NotificationEntity>>
        getNotificationListResponse =
        await _getNotificationListRepository(userID, page);

    return getNotificationListResponse;
  }
}
