// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RandomStringModelImpl _$$RandomStringModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RandomStringModelImpl(
      createdAt: json['createdAt'] as String,
      description: json['description'] as String,
      checklistId: (json['checklistId'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$RandomStringModelImplToJson(
        _$RandomStringModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'description': instance.description,
      'checklistId': instance.checklistId,
      'status': instance.status,
    };
