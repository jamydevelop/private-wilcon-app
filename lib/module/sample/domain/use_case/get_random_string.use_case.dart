import "package:either_dart/either.dart";
import "package:injectable/injectable.dart";

import "../../../../app/failure/failure.dart";
import "../../data/repository/get_random_string.repository.dart";
import "../entity/random_string/random_string.entity.dart";

@injectable
class GetRandomStringUseCase {
  GetRandomStringUseCase({
    required GetRandomStringRepository getRandomStringRepository,
  }) : _getRandomStringRepository = getRandomStringRepository;

  final GetRandomStringRepository _getRandomStringRepository;

  Future<Either<Failure, RandomStringEntity>> call() async {
    final Either<Failure, RandomStringEntity> getRandomStringResponse =
        await _getRandomStringRepository();

    return getRandomStringResponse;
  }
}
