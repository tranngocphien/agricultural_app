import 'package:get/get.dart';
import 'package:grocery_app/screens/explore/presentation/explore_controller.dart';
import 'package:grocery_app/screens/explore/repository/explore_repository.dart';
import 'package:grocery_app/screens/explore/repository/explore_repository_impl.dart';
import 'package:grocery_app/screens/explore/service/explore_service.dart';
import 'package:grocery_app/screens/explore/service/explore_service_impl.dart';

class ExploreBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExploreRepository>(() => ExploreRepositoryImpl());
    Get.lazyPut<ExploreService>(() => ExploreServiceImpl(Get.find()));
    Get.lazyPut<ExploreController>(() => ExploreController(Get.find()));

  }

}