import 'package:get/get.dart';
import 'package:grocery_app/screens/order_history/presentation/order_history_controller.dart';
import 'package:grocery_app/screens/order_history/repository/order_history_repository.dart';
import 'package:grocery_app/screens/order_history/service/order_history_service.dart';

import '../repository/order_history_repository_impl.dart';
import '../service/order_history_service_impl.dart';

class OrderHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderHistoryRepository>(() => OrderHistoryRepositoryImpl());
    Get.lazyPut<OrderHistoryService>(() => OrderHistoryServiceImpl(Get.find<OrderHistoryRepository>()));
    Get.lazyPut(() => OrderHistoryController(Get.find<OrderHistoryService>()));
  }

}