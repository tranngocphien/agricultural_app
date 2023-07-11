import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/entity/product_entity.dart';
import 'package:grocery_app/screens/category_collection/repository/category_collection_repository.dart';

import 'category_collection_service.dart';

class CategoryCollectionServiceImpl extends BaseService<CategoryCollectionRepository> implements CategoryCollectionService {
  CategoryCollectionServiceImpl(super.repository);

  @override
  Future<List<ProductEntity>> getProductsByCategoryId({int page = 0, int limit = 10, required int categoryId}) {
    return repository.getProductsByCategoryId(page: page, limit: limit, categoryId: categoryId);
  }
}