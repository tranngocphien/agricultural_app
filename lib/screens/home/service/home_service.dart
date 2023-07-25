import 'package:grocery_app/entity/product_entity.dart';

import '../../../entity/category_entity.dart';

abstract class HomeService  {
  Future<List<CategoryEntity>> getCategories({int page = 0, int limit = 10});
  Future<List<ProductEntity>> getProducts({int page = 0, int limit = 10});
  Future<List<ProductEntity>> getBestSellerProducts();

}