import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_app/entity/category_entity.dart';
part 'supplier_entity.freezed.dart';
part 'supplier_entity.g.dart';

@freezed
class SupplierEntity with _$SupplierEntity {
  const factory SupplierEntity ({
    int? id,
    String? name,
    String? location,
    String? description,
    String? brandImage,
  }) = _SupplierEntity;

  factory SupplierEntity.fromJson(Map<String, dynamic> json) => _$SupplierEntityFromJson(json);
}