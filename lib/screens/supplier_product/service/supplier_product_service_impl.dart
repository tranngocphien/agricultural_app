import 'package:grocery_app/entity/category_entity.dart';
import 'package:grocery_app/entity/supplier_product_entity.dart';
import 'package:grocery_app/screens/supplier_product/model/supplier_product_model.dart';
import 'package:grocery_app/screens/supplier_product/repository/supplier_product_repository.dart';
import 'package:grocery_app/screens/supplier_product/service/supplier_product_service.dart';

import '../../../common/base/base_service.dart';

class SupplierProductServiceImpl extends BaseService<SupplierProductRepository>
    implements SupplierProductService {
  SupplierProductServiceImpl(super.repository);

  @override
  Future<List<SupplierProductEntity>> getSupplierProductList() {
    return repository.getSupplierProductList();
  }

  @override
  Future<List<CategoryEntity>> getCategories({int page = 0, int limit = 10}) {
    return repository.getCategories(page: page, limit: limit);
  }

  @override
  Future<SupplierProductEntity> createSupplierProduct(
      {required SupplierProductRequest request}) {
    return repository.createSupplierProduct(request: request);
  }

  @override
  Future<SupplierProductEntity> updateSupplierProduct(
      {required SupplierProductRequest request}) {
    return repository.updateSupplierProduct(request: request);
  }

  @override
  Future<String> deleteSupplierProduct({required int supplierProductId}) {
    return repository.deleteSupplierProduct(
        supplierProductId: supplierProductId);
  }
}
