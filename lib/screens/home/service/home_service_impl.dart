import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/entity/category_entity.dart';
import 'package:grocery_app/entity/product_entity.dart';
import '../repository/home_repository.dart';
import 'home_service.dart';

class HomeServiceImpl extends BaseService<HomeRepository> implements HomeService{
  HomeServiceImpl(super.repository);

  @override
  Future<List<CategoryEntity>> getCategories({int page = 0, int limit = 10}) {
    return repository.getCategories(page: page, limit: limit);
  }

  @override
  Future<List<ProductEntity>> getProducts({int page = 0, int limit = 10}) {
    return repository.getProducts(page: page, limit: limit);
  }

  @override
  Future<List<ProductEntity>> getBestSellerProducts() {
    return repository.getBestSeller();

  }

}