import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_controller.dart';
import 'package:grocery_app/entity/purchase_order_entity.dart';
import 'package:grocery_app/screens/supplier_purchase_order/service/supplier_purchase_service.dart';

class SupplierPurchaseOrderController extends BaseController {
  final SupplierPurchaseOrderService supplierPurchaseOrderService;

  SupplierPurchaseOrderController(this.supplierPurchaseOrderService);
  final purchaseOrders = <PurchaseOrderEntity>[].obs;
  final idlePurchaseOrders = <PurchaseOrderEntity>[].obs;
  final processingPurchaseOrders = <PurchaseOrderEntity>[].obs;
  final completePurchaseOrders = <PurchaseOrderEntity>[].obs;
  final rejectPurchaseOrders = <PurchaseOrderEntity>[].obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await getListPurchaseOrder();
  }

  Future<void> getListPurchaseOrder() async {
    loadStatus.value = LoadStatus.loading;
    await networkCall(
      supplierPurchaseOrderService.getPurchaseOrder(),
      onSuccess: (response) {
        purchaseOrders..clear();
        purchaseOrders.assignAll(response);
        loadStatus.value = LoadStatus.success;
        splitOrder();
      },
    );
  }

  Future<void> cancelOrder({required int id}) async {
    showLoading();
    await networkCall(
      supplierPurchaseOrderService.rejectOrder(id: id),
      onSuccess: (response) {
        loadStatus.value = LoadStatus.success;
      },
    );
    Get.back();
    await getListPurchaseOrder();

  }

  Future<void> confirmOrder({required int id}) async {
    showLoading();
    await networkCall(
      supplierPurchaseOrderService.confirmOrder(id: id),
      onSuccess: (response) {
        loadStatus.value = LoadStatus.success;
      },
    );
    Get.back();
    await getListPurchaseOrder();
  }

  void splitOrder() {
    idlePurchaseOrders.clear();
    processingPurchaseOrders.clear();
    completePurchaseOrders.clear();
    rejectPurchaseOrders.clear();
    for (var i = 0; i < purchaseOrders.length; i++) {
      if (purchaseOrders[i].status == 'IDLE') {
        idlePurchaseOrders.add(purchaseOrders[i]);
      } else if (purchaseOrders[i].status == 'PROCESS') {
        processingPurchaseOrders.add(purchaseOrders[i]);
      } else if (purchaseOrders[i].status == 'DONE') {
        completePurchaseOrders.add(purchaseOrders[i]);
      } else if (purchaseOrders[i].status == 'REJECT') {
        rejectPurchaseOrders.add(purchaseOrders[i]);
      }
    }
  }

}