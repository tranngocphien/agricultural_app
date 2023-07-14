import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/screens/supplier_purchase_order/repository/supplier_purchase_repository.dart';

import 'supplier_purchase_service.dart';

class SupplierPurchaseOrderServiceImpl extends BaseService<SupplierPurchaseOrderRepository> implements SupplierPurchaseOrderService {
  SupplierPurchaseOrderServiceImpl(super.repository);

}