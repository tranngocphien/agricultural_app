import 'package:get/get.dart';

import 'supplier_info_controller.dart';

class SupplierInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SupplierInfoController());
  }

}