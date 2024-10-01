// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoteErrorResponseImpl _$$RemoteErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoteErrorResponseImpl(
      errorCode: (json['errorCode'] as num).toInt(),
      errorMessage: json['errorMessage'] as Map<String, dynamic>?,
      errorDescription: json['errorDescription'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RemoteErrorResponseImplToJson(
        _$RemoteErrorResponseImpl instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'errorDescription': instance.errorDescription,
    };
