import 'package:get/get.dart';
import 'package:grocery_app/screens/supplier_product/presentation/update_supplier_product/update_supplier_product_controller.dart';

import '../supplier_product_controller.dart';

class UpdateSupplierProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateSupplierProductController>(() => UpdateSupplierProductController(Get.find()));
  }

}