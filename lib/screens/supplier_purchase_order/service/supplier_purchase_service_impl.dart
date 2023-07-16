import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/entity/purchase_order_entity.dart';
import 'package:grocery_app/screens/supplier_purchase_order/repository/supplier_purchase_repository.dart';

import 'supplier_purchase_service.dart';

class SupplierPurchaseOrderServiceImpl extends BaseService<SupplierPurchaseOrderRepository> implements SupplierPurchaseOrderService {
  SupplierPurchaseOrderServiceImpl(super.repository);

  @override
  Future<List<PurchaseOrderEntity>> getPurchaseOrder() {
    return repository.getPurchaseOrder();
  }

  @override
  Future<PurchaseOrderEntity> confirmOrder({required int id}) {
    return repository.confirmOrder(id: id);
  }

  @override
  Future<PurchaseOrderEntity> rejectOrder({required int id}) {
    return repository.rejectOrder(id: id);
  }

}