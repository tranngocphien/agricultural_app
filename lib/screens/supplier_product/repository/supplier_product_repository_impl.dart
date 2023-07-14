import 'package:grocery_app/entity/supplier_product_entity.dart';

import '../../../common/base/base_repository.dart';
import '../../../entity/category_entity.dart';
import '../model/supplier_product_model.dart';
import 'supplier_product_repository.dart';

class SupplierProductRepositoryImpl extends BaseRepository
    implements SupplierProductRepository {
  @override
  Future<List<SupplierProductEntity>> getSupplierProductList() {
    return getListData("/api/supplier-products",
        (json) => SupplierProductEntity.fromJson(json),
        keyData: "data");
  }

  @override
  Future<List<CategoryEntity>> getCategories({int page = 0, int limit = 10}) {
    return getListData<CategoryEntity>(
        "api/category", (json) => CategoryEntity.fromJson(json),
        keyData: "data");
  }

  @override
  Future<SupplierProductEntity> createSupplierProduct(
      {required SupplierProductRequest request}) async {
    return postData("/api/supplier-products/create",
        (json) => SupplierProductEntity.fromJson(json),
        data: request.toJson(), keyData: "data");
  }

  @override
  Future<SupplierProductEntity> updateSupplierProduct(
      {required SupplierProductRequest request}) {
    return postData("/api/supplier-products/update",
        (json) => SupplierProductEntity.fromJson(json),
        data: request.toJson(), keyData: "data");
  }

  @override
  Future<String> deleteSupplierProduct({required int supplierProductId}) {
    return postData("/api/supplier-products/delete/$supplierProductId",
        (json) => json["message"].toString());
  }
}
