import 'package:get/get.dart';
import 'package:grocery_app/screens/account_info/presentation/account_info_view_model.dart';

import '../../image_picker/repository/image_picker_repository.dart';
import '../../image_picker/repository/image_picker_repository_impl.dart';
import '../../image_picker/service/image_picker_service.dart';
import '../../image_picker/service/image_picker_service_impl.dart';
import '../repository/account_info_repository.dart';
import '../repository/account_info_repository_impl.dart';
import '../service/account_info_service.dart';
import '../service/account_info_service_impl.dart';

class AccountInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePickerRepository>(() => ImagePickerRepositoryImpl());
    Get.lazyPut<ImagePickerService>(() => ImagePickerServiceImpl(Get.find()));
    Get.lazyPut<AccountInfoRepository>(() => AccountInfoRepositoryImpl());
    Get.lazyPut<AccountInfoService>(() => AccountInfoServiceImpl(Get.find()));
    Get.lazyPut(() => AccountInfoViewModel(Get.find(), Get.find()));
  }

}