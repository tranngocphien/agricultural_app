// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingAddressEntity _$$_ShippingAddressEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ShippingAddressEntity(
      id: json['id'] as int?,
      address: json['address'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$_ShippingAddressEntityToJson(
        _$_ShippingAddressEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
    };
