import 'package:get/get.dart';
import 'package:grocery_app/screens/category_collection/presentation/category_collection_controller.dart';
import 'package:grocery_app/screens/category_collection/repository/category_collection_repository_impl.dart';

import '../repository/category_collection_repository.dart';
import '../service/category_collection_service.dart';
import '../service/category_collection_service_impl.dart';

class CategoryCollectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryCollectionRepository>(() => CategoryCollectionRepositoryImpl());
    Get.lazyPut<CategoryCollectionService>(() => CategoryCollectionServiceImpl(Get.find()));
    Get.lazyPut(() => CategoryCollectionController(Get.find()));
  }

}