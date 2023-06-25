import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/category_entity.dart';
import 'package:grocery_app/entity/product_entity.dart';

abstract class HomeRepository extends BaseRepository{
  Future<List<ProductEntity>> getProducts({int page = 0, int limit = 10});
  Future<List<CategoryEntity>> getCategories({int page = 0, int limit = 10});
}