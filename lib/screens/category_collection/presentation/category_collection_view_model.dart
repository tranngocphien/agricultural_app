import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_controller.dart';

import '../../../entity/category_entity.dart';
import '../../../entity/product_entity.dart';
import '../service/category_collection_service.dart';

class CategoryCollectionViewModel extends BaseViewModel {
  final CategoryEntity categoryEntity = Get.arguments;

  final CategoryCollectionService categoryCollectionService;

  CategoryCollectionViewModel(this.categoryCollectionService);
  final products = List<ProductEntity>.empty(growable: true).obs;


  @override
  void onInit() async {
    super.onInit();
    loadStatus(LoadStatus.loading);
    await getProductByCategory();
    loadStatus(LoadStatus.success);
  }

  Future<void> getProductByCategory() async {
    await networkCall(
      categoryCollectionService.getProductsByCategoryId(categoryId: categoryEntity.id ?? 1),
      onSuccess: (data) {
        products.addAll(data);
      },
    );

  }

}