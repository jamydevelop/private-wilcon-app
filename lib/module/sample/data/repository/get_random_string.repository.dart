import "package:either_dart/either.dart";
import "package:injectable/injectable.dart";

import "../../../../app/failure/failure.dart";
import "../../../../app/failure/unhandled/unhandled.failure.dart";
import "../../domain/entity/random_string/random_string.entity.dart";
import "../data_source/get_random_string.data_source.dart";
import "../model/random_string/random_string.model.dart";

@injectable
class GetRandomStringRepository {
  GetRandomStringRepository({
    required GetRandomStringDataSource getRandomStringDataSource,
  }) : _getRandomStringDataSource = getRandomStringDataSource;

  final GetRandomStringDataSource _getRandomStringDataSource;

  Future<Either<Failure, RandomStringEntity>> call() async {
    try {
      final RandomStringModel randomStringModel =
          await _getRandomStringDataSource();
      final RandomStringEntity randomString =
          RandomStringEntity(value: randomStringModel.value);

      return Right<Failure, RandomStringEntity>(randomString);
    } catch (exception) {
      return const Left<Failure, RandomStringEntity>(UnhandledFailure());
    }
  }
}
