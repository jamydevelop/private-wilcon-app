import "package:injectable/injectable.dart";
import "../../../../app/exception/remote/remote.exception.dart";
import "../../../../app/failure/failure.dart";
import "../../../../util/failure_mapper/failure_mapper.util.dart";
import "../../domain/failure/inactive_account/inactive_account.failure.dart";
import "../../domain/failure/invalid_login/invalid_login.failure.dart";
import "../../domain/failure/invalid_role/invalid_role.failure.dart";

@injectable
class FailureLoginMapper {
  FailureLoginMapper({
    required FailureMapperUtil failureMapperUtil,
  }) : _failureMapperUtil = failureMapperUtil;

  final FailureMapperUtil _failureMapperUtil;

  Failure call(dynamic error) {
    if (error is RemoteException) {
      switch (error.statusCode) {
        case 400:
          return const InvalidLoginFailure();
        case 1001:
          return const InvalidRoleFailure();
        case 1002:
          return const InactiveAccountFailure();
      }
    }

    return _failureMapperUtil(error);
  }
}
