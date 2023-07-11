// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderEntity _$$_OrderEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderEntity(
      id: json['id'] as int?,
      amount: json['amount'] as int?,
      shippingFee: json['shippingFee'] as int?,
      shippingAddress: json['shippingAddress'] == null
          ? null
          : ShippingAddressEntity.fromJson(
              json['shippingAddress'] as Map<String, dynamic>),
      status: json['status'] as String?,
      paymentType: json['paymentType'] == null
          ? null
          : PaymentTypeEntity.fromJson(
              json['paymentType'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderEntityToJson(_$_OrderEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'shippingFee': instance.shippingFee,
      'shippingAddress': instance.shippingAddress,
      'status': instance.status,
      'paymentType': instance.paymentType,
      'items': instance.items,
    };

_$_OrderItemEntity _$$_OrderItemEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderItemEntity(
      id: json['id'] as int?,
      product: json['product'] == null
          ? null
          : ProductEntity.fromJson(json['product'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
      hasReview: json['hasReview'] as bool?,
    );

Map<String, dynamic> _$$_OrderItemEntityToJson(_$_OrderItemEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'quantity': instance.quantity,
      'hasReview': instance.hasReview,
    };
