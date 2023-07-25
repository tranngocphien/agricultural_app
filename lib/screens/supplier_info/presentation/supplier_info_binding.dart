import 'package:get/get.dart';

import 'supplier_info_view_model.dart';

class SupplierInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SupplierInfoViewModel());
  }

}