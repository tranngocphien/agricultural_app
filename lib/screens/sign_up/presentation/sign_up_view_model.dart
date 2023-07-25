import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_controller.dart';

import '../../../common/exception/api_exception.dart';
import '../../../common/local/shared_pref.dart';
import '../../../routes/app_routes.dart';
import '../service/sign_up_service.dart';

class SignUpViewModel extends BaseViewModel {
  final SignUpService signUpservice;

  SignUpViewModel(this.signUpservice);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();
  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final usernameError = "".obs;
  final passwordError = "".obs;
  final reenterPasswordError = "".obs;
  final emailError = "".obs;
  final localStorage = Get.find<LocalStorage>();
  final tabIndex = 0.obs;


  @override
  void onInit() {
    super.onInit();
  }

  Future<void> signUp() async {
    if (validate()) {
      showLoading();
      await networkCall(
          signUpservice.signUp(username: usernameController.text,
              password: passwordController.text,
              email: emailController.text,
              firstName: firstNameController.text,
              lastName: lastNameController.text),
          onSuccess: (response) async {
            hideLoading();
            Get.snackbar("Thông báo", "Đăng ký thành công");
            Future.delayed(Duration(seconds: 2));
            Get.offAllNamed(AppRoutes.signIn);
          },
          onError: (error) {
            if (error is UnauthorizedApiException) {
              hideLoading();
              Get.snackbar("Thông báo", (error).message ?? "");
              usernameError.value = error.message ?? "";
            }
          }
      );
    }
  }

  bool validate() {
    bool isValid = true;
    if (usernameController.text.isEmpty) {
      usernameError.value = "Username không được để trống";
      isValid = false;
    } else {
      if(usernameController.text.length < 6) {
        usernameError.value = "Username phải có ít nhất 6 ký tự";
        isValid = false;
      } else {
        usernameError.value = "";
      }
    }
    if (passwordController.text.isEmpty) {
      passwordError.value = "Password không được để trống";
      isValid = false;
    } else {
      if(passwordController.text.length < 6) {
        passwordError.value = "Password phải có ít nhất 6 ký tự";
        isValid = false;
      } else {
        passwordError.value = "";
      }
    }
    if (rePasswordController.text.isEmpty) {
      reenterPasswordError.value = "Bạn chưa nhập lại mật khẩu";
      isValid = false;
    } else {
      if (rePasswordController.text != passwordController.text) {
        reenterPasswordError.value = "Password không trùng khớp";
        isValid = false;
      } else {
        reenterPasswordError.value = "";
      }
    }
    if (emailController.text.isEmpty) {
      emailError.value = "Email không được để trống";
      isValid = false;
    } else {
      if (!GetUtils.isEmail(emailController.text)) {
        emailError.value = "Email không hợp lệ";
        isValid = false;
      } else {
        emailError.value = "";
      }
    }
    return isValid;
  }


}