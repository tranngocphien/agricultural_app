import 'package:get/get.dart';
import 'package:grocery_app/screens/sign_up/presentation/sign_up_view_model.dart';
import 'package:grocery_app/screens/sign_up/repository/sign_up_repository.dart';
import 'package:grocery_app/screens/sign_up/service/sign_up_service.dart';

import '../repository/sign_up_repository_impl.dart';
import '../service/sign_up_service_impl.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpRepository>(() => SignUpRepositoryImpl());
    Get.lazyPut<SignUpService>(() => SignUpServiceImpl(Get.find()));
    Get.lazyPut<SignUpViewModel>(() => SignUpViewModel(Get.find()));
  }
}
