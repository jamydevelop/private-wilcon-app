// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectListModelImpl _$$ProjectListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectListModelImpl(
      projectId: (json['projectId'] as num).toInt(),
      projectName: json['projectName'] as String,
      location: json['location'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$ProjectListModelImplToJson(
        _$ProjectListModelImpl instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'location': instance.location,
      'status': instance.status,
    };
