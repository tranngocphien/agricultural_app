import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/base/base_view.dart';
import '../../../../common_widgets/app_text.dart';
import '../../../../styles/colors.dart';
import '../../../../styles/text_style.dart';
import 'change_password_controller.dart';

class ChangePasswordScreen extends BaseView<ChangePasswordController> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.black),
        title: AppText(
          text: "Đổi mật khẩu",
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mật khẩu hiện tại",
                      style: AppStyles.s12w400.copyWith(color: AppColors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.oldPasswordController,
                      obscureText: controller.oldPasswordObscure.value,
                      decoration: InputDecoration(
                          suffixIcon: Obx(() => InkWell(
                              onTap: () {
                                controller.oldPasswordObscure.value =
                                    !controller.oldPasswordObscure.value;
                              },
                              child: (controller.oldPasswordObscure.value)
                                  ? Icon(Icons.visibility_off_outlined)
                                  : Icon(Icons.visibility_outlined)))),
                    ),
                    Obx(() => Text(controller.oldPasswordError.value, style: AppStyles.s12w400.copyWith(
                      color: AppColors.red01,
                    ),)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mật khẩu mới",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.newPasswordController,
                      obscureText: controller.newPasswordObscure.value,
                      decoration: InputDecoration(
                          suffixIcon: Obx(() => InkWell(
                              onTap: () {
                                controller.newPasswordObscure.value =
                                    !controller.newPasswordObscure.value;
                              },
                              child: (controller.newPasswordObscure.value)
                                  ? Icon(Icons.visibility_off_outlined)
                                  : Icon(Icons.visibility_outlined)))),
                    ),
                    Obx(() => Text(controller.newPasswordError.value, style: AppStyles.s12w400.copyWith(
                      color: AppColors.red01,
                    ),)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Nhập lại mật khẩu mới",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.newPasswordControllerDuplicate,
                      obscureText: controller.newPasswordDuplicateObscure.value,
                      decoration: InputDecoration(
                          suffixIcon: Obx(() => InkWell(
                              onTap: () {
                                controller.newPasswordDuplicateObscure.value =
                                !controller.newPasswordDuplicateObscure.value;
                              },
                              child: (controller.newPasswordDuplicateObscure.value)
                                  ? Icon(Icons.visibility_off_outlined)
                                  : Icon(Icons.visibility_outlined)))),                    ),
                    Obx(() => Text(controller.newPasswordDuplicateError.value, style: AppStyles.s12w400.copyWith(
                      color: AppColors.red01,
                    ),)),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await controller.changePassword();
            },
            child: Container(
                padding: EdgeInsets.all(16),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.primaryColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Đổi mật khẩu",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
