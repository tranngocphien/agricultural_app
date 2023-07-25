import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/exception/api_exception.dart';

import '../../../../common/base/base_controller.dart';
import '../../../../entity/account_info_entity.dart';
import '../../service/account_info_service.dart';

class ChangePasswordController extends BaseViewModel {
  final AccountInfoService accountInfoService;

  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final newPasswordControllerDuplicate = TextEditingController();

  final oldPasswordObscure = true.obs;
  final newPasswordObscure = true.obs;
  final newPasswordDuplicateObscure = true.obs;

  final oldPasswordError = "".obs;
  final newPasswordError = "".obs;
  final newPasswordDuplicateError = "".obs;


  ChangePasswordController(this.accountInfoService);

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> changePassword() async {
    if (validate()) {
      showLoading();
      await networkCall(
        accountInfoService.changePassword(oldPassword: oldPasswordController.text,
            newPassword: newPasswordController.text),
        onSuccess: (data) {
          hideLoading();
          Get.snackbar("Thông báo", "Đổi mật khẩu thành công");
        },
        onError: (error) {
          hideLoading();
          if (error is BadRequestException) {
            oldPasswordError.value = error.message ?? "";
          }
        }

      );
    }
  }

  bool validate() {
    bool isValid = true;
    if (oldPasswordController.text.isEmpty) {
      isValid = false;
      oldPasswordError.value = "Bạn chưa nhập mật khẩu cũ";
    }
    else {
      oldPasswordError.value = "";
    }
    if (newPasswordController.text.isEmpty) {
      isValid = false;
      newPasswordError.value = "Bạn chưa nhập mật khẩu mới";
    } else {
      if(newPasswordController.text.length < 6) {
        isValid = false;
        newPasswordError.value = "Mật khẩu phải có ít nhất 6 ký tự";
      }
      else {
        newPasswordError.value = "";
      }
    }
    if (newPasswordControllerDuplicate.text.isEmpty) {
      isValid = false;
      newPasswordDuplicateError.value = "Bạn chưa nhập lại mật khẩu mới";
    } else {
      newPasswordDuplicateError.value = "";
    }
    if (newPasswordController.text != newPasswordControllerDuplicate.text) {
      isValid = false;
      newPasswordDuplicateError.value = "Mật khẩu bạn nhập lại không khớp";
    } else {
      newPasswordDuplicateError.value = "";
    }
    return isValid;

  }
}