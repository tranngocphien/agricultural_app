import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/create_shipping_address/service/create_shipping_address_service.dart';

import '../../../common/base/base_controller.dart';

class CreateShippingAddressViewModel extends BaseViewModel {
  final CreateShippingAddressService createShippingAddressService;

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  final nameError = "".obs;
  final phoneError = "".obs;
  final addressError = "".obs;

  CreateShippingAddressViewModel(this.createShippingAddressService);

  Future<void> createShippingAddress() async {
    if(validate()) {
      await networkCall(
        createShippingAddressService.createShippingAddress(
          name: nameController.text,
          phone: phoneController.text,
          address: addressController.text,
        ),
        onSuccess: (data) {
          Get.snackbar("Thông báo", "Tạo địa chỉ nhận hàng thành công");
          Get.back();
        },
      );
    }
  }

  bool validate() {
    bool isValid = true;
    if (nameController.text.isEmpty) {
      nameError.value = "Bạn chưa nhập tên người nhận";
      isValid = false;
    } else {
      nameError.value = "";
    }
    if (phoneController.text.isEmpty) {
      phoneError.value = "Bạn chưa nhập số điện thoại";
      isValid = false;
    }
    else {
      phoneError.value = "";
    }
    if(phoneController.text.length < 10 || phoneController.text.length > 11) {
      phoneError.value = "Số điện thoại không hợp lệ";
      isValid = false;
    }
    else {
      phoneError.value = "";
    }
    if (addressController.text.isEmpty) {
      addressError.value = "Bạn chưa nhập địa chỉ nhận hàng";
      isValid = false;
    }
    else {
      addressError.value = "";
    }
    return isValid;
  }

}