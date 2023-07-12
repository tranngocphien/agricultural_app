import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/shipping_address_entity.dart';

import 'create_shipping_address_repository.dart';

class CreateShippingAddressRepositoryImpl extends BaseRepository implements CreateShippingAddressRepository {
  @override
  Future<ShippingAddressEntity> createShippingAddress({required String name, required String phone, required String address}) async {
    return postData("api/account/shipping-address/create", (json) => ShippingAddressEntity.fromJson(json), data: {
      "name": name,
      "phoneNumber": phone,
      "address": address,
    });
  }
}