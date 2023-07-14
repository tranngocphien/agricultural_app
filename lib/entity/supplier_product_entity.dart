import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_app/entity/category_entity.dart';
part 'supplier_product_entity.freezed.dart';
part 'supplier_product_entity.g.dart';

@freezed
class SupplierProductEntity with _$SupplierProductEntity {
  const factory SupplierProductEntity ({
    int? id,
    String? productName,
    int? expectedPrice,
    String? sku,
    String? location,
    String? description,
    CategoryEntity? category,
    List<String>? certificateImages,
    List<String>? images,
    String? preservation,
}) = _SupplierProductEntity;

  factory SupplierProductEntity.fromJson(Map<String, dynamic> json) => _$SupplierProductEntityFromJson(json);
}