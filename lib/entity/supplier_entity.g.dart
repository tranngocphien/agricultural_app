// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupplierEntity _$$_SupplierEntityFromJson(Map<String, dynamic> json) =>
    _$_SupplierEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      description: json['description'] as String?,
      brandImage: json['brandImage'] as String?,
    );

Map<String, dynamic> _$$_SupplierEntityToJson(_$_SupplierEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'description': instance.description,
      'brandImage': instance.brandImage,
    };
