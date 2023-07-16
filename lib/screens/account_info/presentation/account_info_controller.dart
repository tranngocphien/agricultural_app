import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/entity/account_info_entity.dart';
import 'package:grocery_app/screens/account/presentation/account_controller.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/base/base_controller.dart';
import '../../image_picker/service/image_picker_service.dart';
import '../service/account_info_service.dart';

class AccountInfoController extends BaseController {
  final AccountInfoService accountInfoService;
  final ImagePickerService imagePickerService;
  final AccountInfoEntity accountInfoEntity = Get.arguments;

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  final imageAvatar = Rx<List<XFile>>([]);

  final emailError = "".obs;
  final phoneError = "".obs;
  final avatar = "".obs;

  AccountInfoController(this.accountInfoService, this.imagePickerService);

  @override
  void onInit() {
    super.onInit();
    initData();
  }

  void initData() {
    usernameController.text = accountInfoEntity.username ?? "";
    emailController.text = accountInfoEntity.email ?? "";
    phoneController.text = accountInfoEntity.phoneNumber ?? "";
    firstNameController.text = accountInfoEntity.firstName ?? "";
    lastNameController.text = accountInfoEntity.lastName ?? "";
    avatar.value = accountInfoEntity.avatar ?? "";
  }

  Future<void> updateAccountInfo() async {
    if (validateData()) {
      showLoading();
      if (imageAvatar.value.isNotEmpty) {
        await imagePickerService
            .uploadImages(paths: [imageAvatar.value.first.path]).then((value) {
          if (value.isNotEmpty) avatar.value = value.first;
        });
      }
      await networkCall(
        accountInfoService.updateAccountInfo(
            email: emailController.text,
            phoneNumber: phoneController.text,
            firstName: firstNameController.text,
            lastName: lastNameController.text,
            avatar: avatar.value),
        onSuccess: (data) {
          hideLoading();
          Get.snackbar("Thông báo", "Cập nhật thông tin thành công");
          Get.find<AccountController>().getAccountInfo();
        },
      );
    }
  }

  bool validateData() {
    bool isValid = true;
    if (emailController.text.isEmpty) {
      isValid = false;
      emailError.value = "Bạn chưa nhập email";
    } else {
      if (!GetUtils.isEmail(emailController.text)) {
        isValid = false;
        emailError.value = "Email không hợp lệ";
      } else {
        emailError.value = "";
      }
      emailError.value = "";
    }
    if (phoneController.text.isEmpty) {
      isValid = false;
      phoneError.value = "Bạn chưa nhập số điện thoại";
    } else {
      if (!GetUtils.isPhoneNumber(phoneController.text)) {
        isValid = false;
        phoneError.value = "Số điện thoại không hợp lệ";
      } else {
        phoneError.value = "";
      }
      phoneError.value = "";
    }
    return isValid;
  }
}
