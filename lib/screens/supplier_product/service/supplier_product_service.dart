import '../../../entity/category_entity.dart';
import '../../../entity/supplier_product_entity.dart';
import '../model/supplier_product_model.dart';

abstract class SupplierProductService {
  Future<List<SupplierProductEntity>> getSupplierProductList();

  Future<List<CategoryEntity>> getCategories({int page = 0, int limit = 10});
  Future<SupplierProductEntity> createSupplierProduct({required SupplierProductRequest request});
  Future<SupplierProductEntity> updateSupplierProduct({required SupplierProductRequest request});
  Future<String> deleteSupplierProduct({required int supplierProductId});

}