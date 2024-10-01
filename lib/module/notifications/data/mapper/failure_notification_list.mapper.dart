import "package:injectable/injectable.dart";

import "../../../../app/exception/remote/remote.exception.dart";
import "../../../../app/failure/failure.dart";
import "../../../../util/failure_mapper/failure_mapper.util.dart";
import "../../domain/failure/unhandled_error/unhandled_error.failure.dart";

@injectable
class FailureNotificationListMapper {
  FailureNotificationListMapper({
    required FailureMapperUtil failureMapperUtil,
  }) : _failureMapperUtil = failureMapperUtil;

  final FailureMapperUtil _failureMapperUtil;

  Failure call(dynamic error) {
    if (error is RemoteException) {
      switch (error.statusCode) {
        case 400:
          return const UnhandledErrorFailure();
      }
    }
    return _failureMapperUtil(error);
  }
}
