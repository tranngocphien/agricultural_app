import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_app/entity/category_entity.dart';
part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity ({
    int? id,
    String? name,
    int? price,
    String? sku,
    int? stock,
    CategoryEntity? category,
    String? origin,
    List<String>? certificateImages,
    List<String>? images,
    String? preservation,
}) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) => _$ProductEntityFromJson(json);
}