import "package:injectable/injectable.dart";

import "../../app/failure/failure.dart";
import "../../app/failure/unhandled/unhandled.failure.dart";

@injectable
class FailureMapperUtil {
  Failure call(dynamic error) {
    return const UnhandledFailure();
  }
}
