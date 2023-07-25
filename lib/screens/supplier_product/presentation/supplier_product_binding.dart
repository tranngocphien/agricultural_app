import 'package:get/get.dart';
import 'package:grocery_app/screens/supplier_product/presentation/supplier_product_view_model.dart';
import 'package:grocery_app/screens/supplier_product/repository/supplier_product_repository_impl.dart';
import 'package:grocery_app/screens/supplier_product/service/supplier_product_service.dart';
import 'package:grocery_app/screens/supplier_product/service/supplier_product_service_impl.dart';

import '../repository/supplier_product_repository.dart';

class SupplierProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupplierProductRepository>(() => SupplierProductRepositoryImpl());
    Get.lazyPut<SupplierProductService>(() => SupplierProductServiceImpl(Get.find()));
    Get.lazyPut<SupplierProductViewModel>(() => SupplierProductViewModel(Get.find()));
  }

}