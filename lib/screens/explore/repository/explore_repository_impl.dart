import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/category_entity.dart';
import 'package:grocery_app/entity/product_entity.dart';
import 'package:grocery_app/screens/explore/repository/explore_repository.dart';

class ExploreRepositoryImpl extends BaseRepository
    implements ExploreRepository {
  @override
  Future<List<CategoryEntity>> getCategory() {
    return getListData<CategoryEntity>(
        "api/category", (json) => CategoryEntity.fromJson(json),
        keyData: "data");
  }

  @override
  Future<List<ProductEntity>> searchProducts(
      {int page = 0, int limit = 10, String keyword = " "}) {
    return getListData(
        "/api/products/search", (json) => ProductEntity.fromJson(json),
        keyData: "data",
        queryParameters: {"page": page, "limit": limit, "keyword": keyword});
  }
}
