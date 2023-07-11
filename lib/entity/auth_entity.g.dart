// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticateEntity _$$_AuthenticateEntityFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticateEntity(
      token: json['token'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_AuthenticateEntityToJson(
        _$_AuthenticateEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'roles': instance.roles,
    };
