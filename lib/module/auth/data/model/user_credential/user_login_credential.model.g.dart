// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_credential.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLoginModelImpl _$$UserLoginModelImplFromJson(Map<String, dynamic> json) =>
    _$UserLoginModelImpl(
      emailValue: json['email'] as String,
      passwordValue: json['password'] as String,
    );

Map<String, dynamic> _$$UserLoginModelImplToJson(
        _$UserLoginModelImpl instance) =>
    <String, dynamic>{
      'email': instance.emailValue,
      'password': instance.passwordValue,
    };
