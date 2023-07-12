import '../../../entity/shipping_address_entity.dart';

abstract class ShippingAddressRepository {
  Future<List<ShippingAddressEntity>> getShippingAddress();
}