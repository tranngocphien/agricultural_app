import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_app/entity/payment_type.dart';
import 'package:grocery_app/entity/product_entity.dart';
import 'package:grocery_app/entity/shipping_address_entity.dart';

part 'order_entity.freezed.dart';

part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  factory OrderEntity ({
    int? id,
    int? amount,
    int? shippingFee,
    ShippingAddressEntity? shippingAddress,
    String? status,
    PaymentTypeEntity? paymentType,
    List<OrderItemEntity>? items
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}

@freezed
class OrderItemEntity with _$OrderItemEntity {
  factory OrderItemEntity ({
    int? id,
    ProductEntity? product,
    int? quantity,
    bool? hasReview
  }) = _OrderItemEntity;

  factory OrderItemEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderItemEntityFromJson(json);
}