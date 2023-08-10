import 'package:get/get.dart';
import 'package:grocery_app/screens/supplier_product/presentation/update_supplier_product/update_supplier_product_viewmodel.dart';

import '../../../image_picker/repository/image_picker_repository.dart';
import '../../../image_picker/repository/image_picker_repository_impl.dart';
import '../../../image_picker/service/image_picker_service.dart';
import '../../../image_picker/service/image_picker_service_impl.dart';
import '../supplier_product_view_model.dart';

class UpdateSupplierProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePickerRepository>(() => ImagePickerRepositoryImpl());
    Get.lazyPut<ImagePickerService>(() => ImagePickerServiceImpl(Get.find()));
    Get.lazyPut<UpdateSupplierProductViewModel>(() => UpdateSupplierProductViewModel(Get.find(), Get.find()));
  }

}