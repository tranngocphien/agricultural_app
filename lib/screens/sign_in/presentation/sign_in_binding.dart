import 'package:get/get.dart';
import 'package:grocery_app/screens/sign_in/presentation/sign_in_view_model.dart';
import 'package:grocery_app/screens/sign_in/repository/sign_in_repository_impl.dart';
import 'package:grocery_app/screens/sign_in/service/sign_in_service.dart';

import '../repository/sign_in_repository.dart';
import '../service/sign_in_service_impl.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInRepository>(() => SignInRepositoryImpl());
    Get.lazyPut<SignInService>(() => SignInServiceImpl(Get.find()));
    Get.lazyPut(() => SignInViewModel(Get.find()));
  }
}
