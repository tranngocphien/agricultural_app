import '../../../entity/shipping_address_entity.dart';

abstract class ShippingAddressService {
  Future<List<ShippingAddressEntity>> getShippingAddress();
}