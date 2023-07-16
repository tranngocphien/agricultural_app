import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/image_picker/service/image_picker_service.dart';
import 'package:grocery_app/screens/supplier_product/model/supplier_product_model.dart';
import 'package:grocery_app/screens/supplier_product/service/supplier_product_service.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../common/base/base_controller.dart';
import '../../../../entity/category_entity.dart';
import '../supplier_product_controller.dart';

class CreateSupplierProductController extends BaseController {
  final SupplierProductService supplierProductService;
  final ImagePickerService imagePickerService;
  final categories = List<CategoryEntity>.empty(growable: true).obs;
  final selectedCategory = 0.obs;

  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final locationController = TextEditingController();
  final descriptionController = TextEditingController();
  final preservationController = TextEditingController();
  final images = List<String>.empty(growable: true).obs;
  final certificateImages = List<String>.empty(growable: true).obs;

  final nameError = "".obs;
  final priceError = "".obs;
  final locationError = "".obs;
  final descriptionError = "".obs;
  final preservationError = "".obs;
  final imagesError = "".obs;

  CreateSupplierProductController(this.supplierProductService, this.imagePickerService);
  final ImagePicker picker = ImagePicker();
  final imagesProduct = Rx<List<XFile>>([]);
  final imagesCertificate = Rx<List<XFile>>([]);

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    loadStatus(LoadStatus.loading);
    await getCategories();
    loadStatus(LoadStatus.success);
  }

  Future<void> getCategories() async {
    await networkCall(supplierProductService.getCategories(),
        onSuccess: (data) {
      categories.addAll(data);
    });
  }

  bool validateData() {
    bool isValid = true;
    if (nameController.text.isEmpty) {
      nameError("Bạn chưa nhập tên sản phẩm");
      isValid = false;
    } else {
      nameError("");
    }
    if (priceController.text.isEmpty) {
      priceError("Bạn chưa nhập giá");
      isValid = false;
    } else {
      priceError("");
    }
    if (locationController.text.isEmpty) {
      locationError("Bạn chưa nhập địa chỉ sản phẩm");
      isValid = false;
    } else {
      locationError("");
    }
    if (descriptionController.text.isEmpty) {
      descriptionError("Bạn chưa nhập mô tả sản phẩm");
      isValid = false;
    } else {
      descriptionError("");
    }
    if (preservationController.text.isEmpty) {
      preservationError("Bạn chưa nhập cách bảo quản");
      isValid = false;
    } else {
      preservationError("");
    }
    if (imagesProduct.value.isEmpty) {
      imagesError("Vui lòng chọn ít nhất một ảnh");
      isValid = false;
    } else {
      imagesError("");
    }
    return isValid;
  }

  Future<void> createSupplierProduct() async {
    if (validateData()) {
      showLoading();
      await imagePickerService.uploadImages(paths: imagesProduct.value.map((e) => e.path).toList()).then((value) {
        images.addAll(value);
      });
      SupplierProductRequest request = SupplierProductRequest(
          id: 0,
          name: nameController.text,
          categoryId: categories[selectedCategory.value].id ?? 1,
          expectedPrice: int.parse(priceController.text),
          location: locationController.text,
          description: descriptionController.text,
          preservation: preservationController.text,
          images: images,
          certificateImages: certificateImages);
      await networkCall(
        supplierProductService.createSupplierProduct(request: request),
        onSuccess: (data) {
          Get.find<SupplierProductController>().getListSupplierProducts();
          Get.back(result: data);
          Get.snackbar("Thông báo", "Tạo sản phẩm thành công");
        },
      );
    }
  }
}
