import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/supplier_product/presentation/supplier_product_view_model.dart';
import 'package:grocery_app/screens/supplier_product/service/supplier_product_service.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/base/base_controller.dart';
import '../../../../entity/category_entity.dart';
import '../../../../entity/supplier_product_entity.dart';
import '../../../image_picker/service/image_picker_service.dart';
import '../../model/supplier_product_model.dart';

class UpdateSupplierProductViewModel extends BaseViewModel {
  final SupplierProductService supplierProductService;
  final ImagePickerService imagePickerService;
  final SupplierProductEntity supplierProductEntity = Get.arguments;
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

  UpdateSupplierProductViewModel(this.supplierProductService, this.imagePickerService);
  final ImagePicker picker = ImagePicker();
  final imagesProduct = Rx<List<XFile>>([]);
  final imagesCertificate = Rx<List<XFile>>([]);

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    initTextController();
    loadStatus(LoadStatus.loading);
    await getCategories();
    loadStatus(LoadStatus.success);
  }

  void initTextController() {
    nameController.text = supplierProductEntity.productName ?? "";
    priceController.text = supplierProductEntity.expectedPrice.toString();
    locationController.text = supplierProductEntity.location ?? "";
    descriptionController.text = supplierProductEntity.description ?? "";
    preservationController.text = supplierProductEntity.preservation ?? "";
    images.addAll(supplierProductEntity.images ?? []);
    certificateImages.addAll(supplierProductEntity.certificateImages ?? []);
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
    if (images.isEmpty && imagesProduct.value.isEmpty) {
      imagesError("Bạn chưa chọn ảnh sản phẩm");
      isValid = false;
    } else {
      imagesError("");
    }
    return isValid;
  }

  Future<void> updateSupplierProduct() async {
    if (validateData()) {
      showLoading();
      if(imagesProduct.value.isNotEmpty) {
        await imagePickerService.uploadImages(paths: imagesProduct.value.map((e) => e.path).toList()).then((value) {
          images.addAll(value);
          imagesProduct.value.clear();
        });
      }
      if(imagesCertificate.value.isNotEmpty) {
        await imagePickerService.uploadImages(paths: imagesCertificate.value.map((e) => e.path).toList()).then((value) {
          certificateImages.addAll(value);
          imagesCertificate.value.clear();
        });
      }
      SupplierProductRequest request = SupplierProductRequest(
          id: supplierProductEntity.id ?? 0,
          name: nameController.text,
          categoryId: categories[selectedCategory.value].id ?? 1,
          expectedPrice: int.parse(priceController.text),
          location: locationController.text,
          description: descriptionController.text,
          preservation: preservationController.text,
          images: images,
          certificateImages: certificateImages);
      await networkCall(
        supplierProductService.updateSupplierProduct(request: request),
        onSuccess: (data) {
          Get.find<SupplierProductViewModel>().getListSupplierProducts();
          Get.back();
          Get.snackbar("Thông báo", "Cập nhật sản phẩm thành công");
        },
      );
    }
  }

  Future<void> deleteSupplierProduct() async {
      showLoading();
      await networkCall(
        supplierProductService.deleteSupplierProduct(supplierProductId: supplierProductEntity.id ?? 0),
        onSuccess: (data) {
          Get.back();
          Get.back();
          Get.snackbar("Thông báo", "Xóa sản phẩm thành công");
        },
      );
      Get.find<SupplierProductViewModel>().getListSupplierProducts();
  }

}
