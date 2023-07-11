// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountInfoEntity _$$_AccountInfoEntityFromJson(Map<String, dynamic> json) =>
    _$_AccountInfoEntity(
      id: json['id'] as int?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$$_AccountInfoEntityToJson(
        _$_AccountInfoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
