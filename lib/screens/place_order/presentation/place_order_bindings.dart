import 'package:get/get.dart';
import 'package:grocery_app/screens/place_order/presentation/place_order_controller.dart';
import 'package:grocery_app/screens/place_order/repository/place_order_repository.dart';
import 'package:grocery_app/screens/place_order/service/place_order_service.dart';
import 'package:grocery_app/screens/place_order/service/place_order_service_impl.dart';

import '../repository/place_order_repository_impl.dart';

class PlaceOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaceOrderRepository>(() => PlaceOrderRepositoryImpl());
    Get.lazyPut<PlaceOrderService>(() => PlaceOrderServiceImpl(Get.find()));
    Get.lazyPut(() => PlaceOrderController(Get.find()));
  }
}