import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/product_entity.dart';

import 'category_collection_repository.dart';

class CategoryCollectionRepositoryImpl extends BaseRepository implements CategoryCollectionRepository {
  CategoryCollectionRepositoryImpl() : super();

  @override
  Future<List<ProductEntity>> getProductsByCategoryId({int page = 0, int limit = 10, required int categoryId}) {
    return getListData("/api/products/filter", (json) => ProductEntity.fromJson(json), keyData: "data", queryParameters: {"categoryId": categoryId, "page": page, "size": limit});
  }
}