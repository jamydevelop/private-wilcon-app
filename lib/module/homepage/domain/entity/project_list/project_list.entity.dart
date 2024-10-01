import "package:freezed_annotation/freezed_annotation.dart";

part "project_list.entity.freezed.dart";

@freezed
class ProjectListEntity with _$ProjectListEntity {
  const factory ProjectListEntity({
    required int projectId,
    required String projectName,
    required String location,
    required String status,
  }) = _ProjectListEntity;
}
