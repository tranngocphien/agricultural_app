import '../../../entity/shipping_address_entity.dart';

abstract class CreateShippingAddressService {
  Future<ShippingAddressEntity> createShippingAddress(
      {required String name, required String phone, required String address});
}