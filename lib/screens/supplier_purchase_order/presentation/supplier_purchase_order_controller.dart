import 'package:grocery_app/common/base/base_controller.dart';
import 'package:grocery_app/screens/supplier_purchase_order/service/supplier_purchase_service.dart';

class SupplierPurchaseOrderController extends BaseController {
  final SupplierPurchaseOrderService supplierPurchaseOrderService;

  SupplierPurchaseOrderController(this.supplierPurchaseOrderService);

}