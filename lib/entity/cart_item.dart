import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_app/entity/product_entity.dart';
part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItemEntity with _$CartItemEntity {
  const factory CartItemEntity ({
    ProductEntity? product,
    int? amount
  }) = _CartItemEntity;

  factory CartItemEntity.fromJson(Map<String, dynamic> json) => _$CartItemEntityFromJson(json);
}