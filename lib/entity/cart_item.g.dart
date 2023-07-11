// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemEntity _$$_CartItemEntityFromJson(Map<String, dynamic> json) =>
    _$_CartItemEntity(
      product: json['product'] == null
          ? null
          : ProductEntity.fromJson(json['product'] as Map<String, dynamic>),
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$$_CartItemEntityToJson(_$_CartItemEntity instance) =>
    <String, dynamic>{
      'product': instance.product,
      'amount': instance.amount,
    };
