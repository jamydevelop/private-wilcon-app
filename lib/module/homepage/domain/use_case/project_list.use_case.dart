import "package:either_dart/either.dart";
import "package:injectable/injectable.dart";

import "../../../../app/failure/failure.dart";
import "../../data/repository/project_list.repository.dart";
import "../entity/project_list/project_list.entity.dart";

@injectable
class ProjectListUseCase {
  ProjectListUseCase({
    required ProjectListRepository getProjectListRepository,
  }) : _getProjectListRepository = getProjectListRepository;

  final ProjectListRepository _getProjectListRepository;

  Future<Either<Failure, ProjectListEntity>> call() async {
    final Either<Failure, ProjectListEntity> getProjectListResponse =
        await _getProjectListRepository();

    return getProjectListResponse;
  }
}
