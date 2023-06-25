import 'package:grocery_app/entity/category_entity.dart';
import 'package:grocery_app/entity/product_entity.dart';

abstract class ExploreService {
  Future<List<CategoryEntity>> getCategory();
  Future<List<ProductEntity>> searchProducts({int page = 0, int limit = 10, String keyword = " "});
}