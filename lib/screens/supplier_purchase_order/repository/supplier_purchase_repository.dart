import '../../../entity/purchase_order_entity.dart';

abstract class SupplierPurchaseOrderRepository {
  Future<List<PurchaseOrderEntity>> getPurchaseOrder();
  Future<PurchaseOrderEntity> confirmOrder({required int id});
  Future<PurchaseOrderEntity> rejectOrder({required int id});

}