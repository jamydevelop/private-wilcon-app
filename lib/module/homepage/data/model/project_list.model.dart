import "package:freezed_annotation/freezed_annotation.dart";

part "project_list.model.freezed.dart";
part "project_list.model.g.dart";

//Notif 02
@freezed
class ProjectListModel with _$ProjectListModel {
  const factory ProjectListModel({
    @JsonKey(name: "projectId") required int projectId,
    @JsonKey(name: "projectName") required String projectName,
    @JsonKey(name: "location") required String location,
    @JsonKey(name: "status") required String status,
  }) = _ProjectListModel;

  factory ProjectListModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectListModelFromJson(json);
}
