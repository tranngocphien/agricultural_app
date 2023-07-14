import 'package:get/get.dart';
import 'package:grocery_app/screens/supplier_product/presentation/create_supplier_product/create_supplier_product_controller.dart';

class CreateSupplierProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateSupplierProductController>(() => CreateSupplierProductController(Get.find()));
  }

}