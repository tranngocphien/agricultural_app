import 'package:freezed_annotation/freezed_annotation.dart';

import 'supplier_product_entity.dart';

part 'purchase_order_entity.freezed.dart';

part 'purchase_order_entity.g.dart';

@freezed
class PurchaseOrderEntity with _$PurchaseOrderEntity {
  factory PurchaseOrderEntity ({
    int? id,
    SupplierProductEntity? supplierProduct,
    int? amount,
    int? price,
    String? status,
    String? note,
    DateTime? harvestAt
  }) = _PurchaseOrderEntity;

  factory PurchaseOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderEntityFromJson(json);
}
