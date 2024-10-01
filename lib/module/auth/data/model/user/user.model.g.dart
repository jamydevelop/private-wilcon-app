// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLoginModelImpl _$$UserLoginModelImplFromJson(Map<String, dynamic> json) =>
    _$UserLoginModelImpl(
      userId: (json['userId'] as num).toInt(),
      role: json['role'] as String,
      roleIdList:
          (json['role_ids'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserLoginModelImplToJson(
        _$UserLoginModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'role': instance.role,
      'role_ids': instance.roleIdList,
    };
