import 'package:grocery_app/entity/shipping_address_entity.dart';
import 'package:grocery_app/screens/shipping_address/service/shipping_address_service.dart';

import '../../../common/base/base_service.dart';
import '../repository/shipping_address_repository.dart';

class ShippingAddressServiceImpl extends BaseService<ShippingAddressRepository> implements ShippingAddressService {
  ShippingAddressServiceImpl(super.repository);

  @override
  Future<List<ShippingAddressEntity>> getShippingAddress() {
    return repository.getShippingAddress();
  }

}