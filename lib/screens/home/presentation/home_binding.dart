import 'package:get/get.dart';
import 'package:grocery_app/screens/home/presentation/home_view_model.dart';
import 'package:grocery_app/screens/home/repository/home_repository.dart';
import 'package:grocery_app/screens/home/service/home_service.dart';
import 'package:grocery_app/screens/home/service/home_service_impl.dart';
import '../repository/home_repository_impl.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRepository>(() => HomeRepositoryImpl());
    Get.lazyPut<HomeService>(() => HomeServiceImpl(Get.find()));
    Get.lazyPut(() => HomeViewModel(Get.find()));
  }
}