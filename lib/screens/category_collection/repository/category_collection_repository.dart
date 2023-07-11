import '../../../entity/product_entity.dart';

abstract class CategoryCollectionRepository {
  Future<List<ProductEntity>> getProductsByCategoryId({int page = 0, int limit = 10, required int categoryId});

}