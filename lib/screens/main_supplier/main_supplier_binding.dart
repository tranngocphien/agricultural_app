import 'package:get/get.dart';

import 'main_supplier_view_model.dart';

class MainSupplierBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainSupplierViewModel());
  }

}