import 'package:grocery_app/entity/shipping_address_entity.dart';
import 'package:grocery_app/screens/create_shipping_address/repository/create_shipping_address_repository.dart';

import '../../../common/base/base_service.dart';
import 'create_shipping_address_service.dart';

class CreateShippingAddressServiceImpl extends BaseService<CreateShippingAddressRepository> implements CreateShippingAddressService {
  CreateShippingAddressServiceImpl(CreateShippingAddressRepository repository) : super(repository);

  @override
  Future<ShippingAddressEntity> createShippingAddress({required String name, required String phone, required String address}) {
    return repository.createShippingAddress(name: name, phone: phone, address: address);
  }
}