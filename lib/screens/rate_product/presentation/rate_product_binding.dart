import 'package:get/get.dart';
import 'package:grocery_app/screens/rate_product/presentation/rate_product_view_model.dart';
import 'package:grocery_app/screens/rate_product/repository/rate_product_repository_impl.dart';

import '../repository/rate_product_repository.dart';
import '../service/rate_product_service.dart';
import '../service/rate_product_service_impl.dart';

class RateProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RateProductRepository>(() => RateProductRepositoryImpl());
    Get.lazyPut<RateProductService>(() => RateProductServiceImpl(Get.find()));
    Get.lazyPut<RateProductViewModel>(() => RateProductViewModel(Get.find()));
  }
}