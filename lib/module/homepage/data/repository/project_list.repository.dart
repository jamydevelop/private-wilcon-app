import "package:either_dart/either.dart";
import "package:injectable/injectable.dart";

import "../../../../app/failure/failure.dart";
import "../../../../app/failure/unhandled/unhandled.failure.dart";
import "../../domain/entity/project_list/project_list.entity.dart";
import "../data_source/project_list.data_source.dart";
import "../model/project_list.model.dart";

@injectable
class ProjectListRepository {
  ProjectListRepository({
    required ProjectListDataSource getProjectListDataSource,
  }) : _getProjectListDataSource = getProjectListDataSource;

  final ProjectListDataSource _getProjectListDataSource;

  Future<Either<Failure, ProjectListEntity>> call() async {
    try {
      final ProjectListModel projectListModel =
          await _getProjectListDataSource();

      final ProjectListEntity NotifTotalEntity = ProjectListEntity(
          projectId: projectListModel.projectId,
          projectName: projectListModel.projectName,
          location: projectListModel.location,
          status: projectListModel.status);

      return Right<Failure, ProjectListEntity>(NotifTotalEntity);
    } catch (exception) {
      return const Left<Failure, ProjectListEntity>(UnhandledFailure());
    }
  }
}
