import 'package:grocery_app/screens/supplier_product/model/supplier_product_model.dart';

import '../../../entity/category_entity.dart';
import '../../../entity/supplier_product_entity.dart';

abstract class SupplierProductRepository {
  Future<List<SupplierProductEntity>> getSupplierProductList();
  Future<List<CategoryEntity>> getCategories({int page = 0, int limit = 10});
  Future<SupplierProductEntity> createSupplierProduct({required SupplierProductRequest request});
  Future<SupplierProductEntity> updateSupplierProduct({required SupplierProductRequest request});
  Future<String> deleteSupplierProduct({required int supplierProductId});
}