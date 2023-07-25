import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/base/base_view.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';
import 'sign_up_view_model.dart';

class SignUpScreen extends BaseView<SignUpViewModel> {
  SignUpScreen({Key? key});

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/icon_logo.png",
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    "Đăng ký",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller.usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (value) {
                  controller.usernameError.value = "";
                },
              ),
              Obx(() => Text(controller.usernameError.value, style: TextStyle(color: Colors.red),)),
              const SizedBox(
                height: 4,
              ),
              TextField(
                controller: controller.passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  hintText: "Nhập mật khẩu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (value) {
                  controller.passwordError.value = "";
                },
              ),
              Obx(() => Text(controller.passwordError.value, style: TextStyle(color: Colors.red),)),
              const SizedBox(
                height: 4,
              ),
              TextField(
                controller: controller.rePasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Nhập lại mật khẩu",
                  hintText: "Nhập lại mật khẩu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (value) {
                  controller.reenterPasswordError.value = "";
                },
              ),
              Obx(() => Text(controller.reenterPasswordError.value, style: TextStyle(color: Colors.red),)),
              const SizedBox(
                height: 4,
              ),
              TextField(
                controller: controller.emailController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (value) {
                  controller.emailError.value = "";
                },
              ),
              Obx(() => Text(controller.emailError.value, style: TextStyle(color: Colors.red),)),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller.lastNameController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: "Họ",
                        hintText: "Họ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (value) {
                      },
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: TextField(
                      controller: controller.firstNameController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: "Tên",
                        hintText: "Tên",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (value) {
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  await controller.signUp();
                },
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 16, ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.primaryColor,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Đăng ký",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Đã có tài khoản?", style: AppStyles.s12w400.copyWith(
                    color: Colors.grey,
                  ),),
                  SizedBox(width: 4,),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.signIn);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.primaryColor,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Text(
                        "Đăng nhập",
                        style: AppStyles.s14w600.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
