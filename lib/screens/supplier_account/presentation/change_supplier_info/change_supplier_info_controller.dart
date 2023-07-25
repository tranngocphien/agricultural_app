import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/entity/supplier_entity.dart';
import 'package:grocery_app/screens/supplier_account/service/supplier_account_service.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/base/base_controller.dart';
import '../../../image_picker/service/image_picker_service.dart';

class ChangeSupplierInfoController extends BaseViewModel {
  final SupplierAccountService supplierAccountService;
  final ImagePickerService imagePickerService;

  ChangeSupplierInfoController(
      this.supplierAccountService, this.imagePickerService);

  final supplierInfo = Rx<SupplierEntity?>(null);
  final imageAvatar = Rx<List<XFile>>([]);

  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final descriptionController = TextEditingController();

  final nameError = "".obs;
  final locationError = "".obs;
  final descriptionError = "".obs;
  String imageUrl = "";

  @override
  Future<void> onInit() async {
    super.onInit();
    await getSupplierInfo();
    initData();
  }

  void initData() {
    nameController.text = supplierInfo.value?.name ?? "";
    locationController.text = supplierInfo.value?.location ?? "";
    descriptionController.text = supplierInfo.value?.description ?? "";
    imageUrl = supplierInfo.value?.brandImage ?? "";
  }

  Future<void> getSupplierInfo() async {
    loadStatus.value = LoadStatus.loading;
    await networkCall(
      supplierAccountService.getSupplierInfo(),
      onSuccess: (data) {
        supplierInfo.value = data;
      },
    );
    loadStatus.value = LoadStatus.success;
  }

  Future<void> updateSupplierInfo() async {
    if (validateData()) {
      if (imageAvatar.value.isNotEmpty) {
        await imagePickerService
            .uploadImages(paths: [imageAvatar.value.first.path]).then((value) {
          if (value.isNotEmpty) imageUrl = value.first;
        });
      }
      await networkCall(
        supplierAccountService.updateSupplierInfo(
            id: supplierInfo.value?.id ?? 0,
            name: nameController.text,
            location: locationController.text,
            description: descriptionController.text,
            brandImage: imageUrl),
        onSuccess: (data) {
          hideLoading();
          Get.snackbar("Thông báo", "Cập nhật thông tin thành công");
        },
      );
    }
  }

  bool validateData() {
    bool isValid = true;
    if (nameController.text.isEmpty) {
      nameError.value = "Bạn chưa nhập tên nhà cung cấp";
      isValid = false;
    } else {
      nameError.value = "";
    }
    if (locationController.text.isEmpty) {
      locationError.value = "Bạn chưa nhập địa chỉ nhà cung cấp";
      isValid = false;
    } else {
      locationError.value = "";
    }
    if (descriptionController.text.isEmpty) {
      descriptionError.value = "Bạn chưa nhập mô tả nhà cung cấp";
      isValid = false;
    } else {
      descriptionError.value = "";
    }
    return isValid;
  }
}
