import 'package:get/get.dart';
import 'package:grocery_app/screens/image_picker/repository/image_picker_repository.dart';
import 'package:grocery_app/screens/image_picker/repository/image_picker_repository_impl.dart';
import 'package:grocery_app/screens/image_picker/service/image_picker_service.dart';
import 'package:grocery_app/screens/image_picker/service/image_picker_service_impl.dart';
import 'package:grocery_app/screens/supplier_product/presentation/create_supplier_product/create_supplier_product_controller.dart';

class CreateSupplierProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePickerRepository>(() => ImagePickerRepositoryImpl());
    Get.lazyPut<ImagePickerService>(() => ImagePickerServiceImpl(Get.find()));
    Get.lazyPut<CreateSupplierProductController>(() => CreateSupplierProductController(Get.find(), Get.find()));
  }

}