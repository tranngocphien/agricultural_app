import 'package:freezed_annotation/freezed_annotation.dart';
part 'shipping_address_entity.freezed.dart';
part 'shipping_address_entity.g.dart';
@freezed
class ShippingAddressEntity with _$ShippingAddressEntity {
  const factory ShippingAddressEntity({
    int? id,
    String? address,
    String? name,
    String? phoneNumber
})  = _ShippingAddressEntity;

  factory ShippingAddressEntity.fromJson(Map<String, dynamic> json) => _$ShippingAddressEntityFromJson(json);

}