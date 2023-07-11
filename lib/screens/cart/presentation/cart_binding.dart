import 'package:get/get.dart';
import 'package:grocery_app/screens/cart/presentation/cart_controller.dart';
import 'package:grocery_app/screens/cart/repository/cart_repository.dart';
import 'package:grocery_app/screens/cart/service/cart_service.dart';
import 'package:grocery_app/screens/cart/service/cart_service_impl.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartRepository>(() => CartRepository());
    Get.lazyPut<CartService>(() => CartServiceImpl(Get.find()));
    Get.lazyPut(() => CartController(Get.find()));
  }

}