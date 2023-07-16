import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/purchase_order_entity.dart';

import 'supplier_purchase_repository.dart';

class SupplierPurchaseOrderRepositoryImpl extends BaseRepository implements SupplierPurchaseOrderRepository {
  @override
  Future<List<PurchaseOrderEntity>> getPurchaseOrder() {
    return getListData("/api/purchase-orders", (json) => PurchaseOrderEntity.fromJson(json), keyData: "data");
  }

  @override
  Future<PurchaseOrderEntity> confirmOrder({required int id}) {
    return postData("/api/purchase-orders/confirm/$id", (json) => PurchaseOrderEntity.fromJson(json), keyData: "data");
  }

  @override
  Future<PurchaseOrderEntity> rejectOrder({required int id}) {
    return postData("/api/purchase-orders/reject/$id", (json) => PurchaseOrderEntity.fromJson(json), keyData: "data");
  }



}