import 'package:get/get.dart';

import '../repository/supplier_purchase_repository.dart';
import '../repository/supplier_purchase_repository_impl.dart';
import '../service/supplier_purchase_service.dart';
import '../service/supplier_purchase_service_impl.dart';
import 'supplier_purchase_order_controller.dart';

class SupplierPurchaseOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupplierPurchaseOrderRepository>(() => SupplierPurchaseOrderRepositoryImpl());
    Get.lazyPut<SupplierPurchaseOrderService>(() => SupplierPurchaseOrderServiceImpl(Get.find()));
    Get.lazyPut(() => SupplierPurchaseOrderController(Get.find()));
  }

}