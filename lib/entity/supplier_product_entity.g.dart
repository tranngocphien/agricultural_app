// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupplierProductEntity _$$_SupplierProductEntityFromJson(
        Map<String, dynamic> json) =>
    _$_SupplierProductEntity(
      id: json['id'] as int?,
      productName: json['productName'] as String?,
      expectedPrice: json['expectedPrice'] as int?,
      sku: json['sku'] as String?,
      location: json['location'] as String?,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : CategoryEntity.fromJson(json['category'] as Map<String, dynamic>),
      certificateImages: (json['certificateImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      preservation: json['preservation'] as String?,
    );

Map<String, dynamic> _$$_SupplierProductEntityToJson(
        _$_SupplierProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'expectedPrice': instance.expectedPrice,
      'sku': instance.sku,
      'location': instance.location,
      'description': instance.description,
      'category': instance.category,
      'certificateImages': instance.certificateImages,
      'images': instance.images,
      'preservation': instance.preservation,
    };
