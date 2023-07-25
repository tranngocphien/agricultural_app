import 'package:get/get.dart';
import 'package:grocery_app/screens/create_shipping_address/repository/create_shipping_addres_repository_impl.dart';
import 'package:grocery_app/screens/create_shipping_address/repository/create_shipping_address_repository.dart';
import 'package:grocery_app/screens/create_shipping_address/service/create_shipping_address_service.dart';
import 'package:grocery_app/screens/create_shipping_address/service/create_shipping_address_service_impl.dart';

import 'create_shipping_address_view_model.dart';

class CreateShippingAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateShippingAddressRepository>(() => CreateShippingAddressRepositoryImpl());
    Get.lazyPut<CreateShippingAddressService>(() => CreateShippingAddressServiceImpl(Get.find()));
    Get.lazyPut(() => CreateShippingAddressViewModel(Get.find()));
  }
}