import 'package:get/get.dart';

import '../repository/shipping_address_repository.dart';
import '../repository/shipping_address_repository_impl.dart';
import '../service/shipping_address_service.dart';
import '../service/shipping_address_service_impl.dart';
import 'shipping_address_view_model.dart';

class ShippingAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShippingAddressRepository>(() => ShippingAddressRepositoryImpl());
    Get.lazyPut<ShippingAddressService>(() => ShippingAddressServiceImpl(Get.find()));
    Get.lazyPut<ShippingAddressViewModel>(() => ShippingAddressViewModel(Get.find()));
  }
}