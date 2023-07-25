import 'package:get/get.dart';
import 'package:grocery_app/screens/order_detail/repository/order_detail_repository.dart';
import 'package:grocery_app/screens/order_detail/repository/order_detail_repository_impl.dart';
import 'package:grocery_app/screens/order_detail/service/order_detail_service_impl.dart';

import '../service/order_detail_service.dart';
import 'order_detail_view_model.dart';

class OrderDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDetailRepository>(() => OrderDetailRepositoryImpl());
    Get.lazyPut<OrderDetailService>(() => OrderDetailServiceImpl(Get.find()));
    Get.lazyPut(() => OrderDetailViewModel(Get.find()));
  }

}