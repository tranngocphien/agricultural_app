import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_controller.dart';
import 'package:grocery_app/entity/category_entity.dart';
import 'package:grocery_app/entity/product_entity.dart';

import '../service/home_service.dart';

class HomeViewModel extends BaseViewModel {
  final HomeService homeService;
  HomeViewModel(this.homeService);
  final categories = List<CategoryEntity>.empty(growable: true).obs;
  final products = List<ProductEntity>.empty(growable: true).obs;
  final bestSellerProducts = List<ProductEntity>.empty(growable: true).obs;

  @override
  void onInit() async {
    super.onInit();
    loadStatus(LoadStatus.loading);
    await Future.wait(
      [
        networkCall(homeService.getCategories(), onSuccess: (data) {
          categories.addAll(data);
        }),
        networkCall(homeService.getProducts(limit: 10, page: 0), onSuccess: (data) {
          products.addAll(data);
        }),
        networkCall(homeService.getBestSellerProducts(), onSuccess: (data) {
          bestSellerProducts.addAll(data);
        })
      ]
    );
    loadStatus(LoadStatus.success);
  }

}