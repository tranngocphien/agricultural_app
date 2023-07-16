import 'package:get/get.dart';

import '../../repository/account_info_repository.dart';
import '../../repository/account_info_repository_impl.dart';
import '../../service/account_info_service.dart';
import '../../service/account_info_service_impl.dart';
import 'change_password_controller.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountInfoRepository>(() => AccountInfoRepositoryImpl());
    Get.lazyPut<AccountInfoService>(() => AccountInfoServiceImpl(Get.find()));
    Get.lazyPut(() => ChangePasswordController(Get.find()));
  }
}