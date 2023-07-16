// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseOrderEntity _$$_PurchaseOrderEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseOrderEntity(
      id: json['id'] as int?,
      supplierProduct: json['supplierProduct'] == null
          ? null
          : SupplierProductEntity.fromJson(
              json['supplierProduct'] as Map<String, dynamic>),
      amount: json['amount'] as int?,
      price: json['price'] as int?,
      status: json['status'] as String?,
      note: json['note'] as String?,
      harvestAt: json['harvestAt'] == null
          ? null
          : DateTime.parse(json['harvestAt'] as String),
    );

Map<String, dynamic> _$$_PurchaseOrderEntityToJson(
        _$_PurchaseOrderEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierProduct': instance.supplierProduct,
      'amount': instance.amount,
      'price': instance.price,
      'status': instance.status,
      'note': instance.note,
      'harvestAt': instance.harvestAt?.toIso8601String(),
    };
