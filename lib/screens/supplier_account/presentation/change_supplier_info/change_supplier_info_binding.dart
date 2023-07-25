import 'package:get/get.dart';

import '../../../image_picker/repository/image_picker_repository.dart';
import '../../../image_picker/repository/image_picker_repository_impl.dart';
import '../../../image_picker/service/image_picker_service.dart';
import '../../../image_picker/service/image_picker_service_impl.dart';
import '../../repository/supplier_account_repository.dart';
import '../../repository/supplier_account_repository_impl.dart';
import '../../service/supplier_account_service.dart';
import '../../service/supplier_account_service_impl.dart';
import 'change_supplier_info_controller.dart';

class ChangeSupplierInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePickerRepository>(() => ImagePickerRepositoryImpl());
    Get.lazyPut<ImagePickerService>(() => ImagePickerServiceImpl(Get.find()));
    Get.lazyPut<SupplierAccountRepository>(() => SupplierAccountRepositoryImpl());
    Get.lazyPut<SupplierAccountService>(() => SupplierAccountServiceImpl(Get.find()));
    Get.lazyPut<ChangeSupplierInfoController>(() => ChangeSupplierInfoController(Get.find(), Get.find()));
  }

}