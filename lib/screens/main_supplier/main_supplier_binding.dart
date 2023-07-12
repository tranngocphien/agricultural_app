import 'package:get/get.dart';

import 'main_supplier_controller.dart';

class MainSupplierBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainSupplierController());
  }

}