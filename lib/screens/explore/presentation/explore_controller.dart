import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_controller.dart';
import 'package:grocery_app/screens/explore/service/explore_service.dart';

import '../../../entity/product_entity.dart';

class ExploreController extends BaseController {
  final ExploreService _exploreService;
  ExploreController(this._exploreService);
  final products = List<ProductEntity>.empty(growable: true).obs;


  @override
  void onInit() async {
    super.onInit();
    await searchProduct(keyword: " ");
  }

  Future<void> searchProduct({required String keyword, int limit = 10, int page = 0}) async {
    await networkCall(
      _exploreService.searchProducts(keyword: keyword, limit: limit, page: page),
      onSuccess: (data) {
        products.clear();
        products.addAll(data);
      }
    );
  }

}