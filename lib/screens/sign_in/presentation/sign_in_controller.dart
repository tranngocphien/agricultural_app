import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/exceptions/exceptions.dart';
import 'package:grocery_app/common/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/constants.dart';
import 'package:grocery_app/common/exception/api_exception.dart';
import 'package:grocery_app/common/network/dio_provider.dart';
import 'package:grocery_app/screens/sign_in/service/sign_in_service.dart';

import '../../../common/local/shared_pref.dart';
import '../../../routes/app_routes.dart';

class SignInController extends BaseController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameError = "".obs;
  final passwordError = "".obs;
  final SignInService signInService;
  final localStorage = Get.find<LocalStorage>();
  final tabIndex = 0.obs;

  SignInController(this.signInService);


  @override
  void onInit() {
    super.onInit();
  }

  Future<void> signIn() async {
    if(validate()) {
      await networkCall(
        signInService.signIn(usernameController.text, passwordController.text),
        onSuccess: (response) async {
          await localStorage.save(SharedPrefKey.accessToken, response.token, );
          DioProvider.addToken(response.token ?? "");
          Get.snackbar("Thông báo", "Đăng nhập thành công");
          Future.delayed(Duration(seconds: 2));
          if(tabIndex.value == 0) {
            Get.offAllNamed(AppRoutes.main);
          } else {
            Get.offAllNamed(AppRoutes.mainSupplier);
          }
        },
        onError: (error) {
          if (error is UnauthorizedApiException) {
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
      usernameError.value = "";
    }
    if (passwordController.text.isEmpty) {
      passwordError.value = "Password không được để trống";
      isValid = false;
    } else {
      passwordError.value = "";
    }
    return isValid;
  }

}