import 'package:get/get.dart';
import 'package:grocery_app/screens/product_details/presentation/product_details_view_model.dart';
import 'package:grocery_app/screens/product_details/repository/product_detail_repository.dart';
import 'package:grocery_app/screens/product_details/service/product_detail_service.dart';
import 'package:grocery_app/screens/product_details/service/product_detail_service_impl.dart';

import '../repository/product_detail_repository_impl.dart';

class ProductDetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailRepository>(() => ProductDetailRepositoryImpl());
    Get.lazyPut<ProductDetailService>(() => ProductDetailServiceImpl(Get.find()));
    Get.lazyPut(() => ProductDetailViewModel(Get.find()));
  }

}