import 'dart:convert';

import 'package:grocery_app/entity/category_entity.dart';
import 'package:grocery_app/entity/product_entity.dart';
import 'package:grocery_app/screens/home/repository/home_repository.dart';
import '../../../common/base/base_repository.dart';

class HomeRepositoryImpl extends BaseRepository implements HomeRepository{
  HomeRepositoryImpl() : super();

  @override
  Future<List<CategoryEntity>> getCategories({int page = 0, int limit = 10}) {
    return getListData<CategoryEntity>("api/category", (json) => CategoryEntity.fromJson(json), keyData: "data");
  }

  @override
  Future<List<ProductEntity>> getProducts({int page = 0, int limit = 10}) {
    return getListData("/api/products?page=$page&size=$limit", (json) => ProductEntity.fromJson(json), keyData: "data");
  }

  @override
  Future<List<ProductEntity>> getBestSeller() {
    return getListData("/api/products/bestSeller", (json) => ProductEntity.fromJson(json), keyData: "data");

  }
}