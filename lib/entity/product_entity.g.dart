// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductEntity _$$_ProductEntityFromJson(Map<String, dynamic> json) =>
    _$_ProductEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      sku: json['sku'] as String?,
      stock: json['stock'] as int?,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : CategoryEntity.fromJson(json['category'] as Map<String, dynamic>),
      origin: json['origin'] as String?,
      certificateImages: (json['certificateImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      preservation: json['preservation'] as String?,
      directionForUse: json['directionForUse'] as String?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      supplier: json['supplier'] == null
          ? null
          : SupplierEntity.fromJson(json['supplier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductEntityToJson(_$_ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'sku': instance.sku,
      'stock': instance.stock,
      'description': instance.description,
      'category': instance.category,
      'origin': instance.origin,
      'certificateImages': instance.certificateImages,
      'images': instance.images,
      'preservation': instance.preservation,
      'directionForUse': instance.directionForUse,
      'comments': instance.comments,
      'supplier': instance.supplier,
    };
