import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/sign_in/presentation/sign_in_view_model.dart';

import '../../../common/base/base_view.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';

class SignInScreen extends BaseView<SignInViewModel> {
  SignInScreen({Key? key});

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
                    "Đăng nhập",
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
              DefaultTabController(length: 2,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: AppColors.primaryColor,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: AppColors.primaryColor,
                      onTap: (index) {
                        controller.tabIndex.value = index;
                      },
                      tabs: [
                        Tab(
                          text: "Khách hàng",
                        ),
                        Tab(
                          text: "Nhà cung cấp",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    )
                  ],
                )

              ),
              Text("Đăng nhập bằng tài khoản của bạn"),
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
                  controller.validate();
                },
              ),
              Obx(() => Text(controller.usernameError.value, style: TextStyle(color: Colors.red),)),
              const SizedBox(
                height: 20,
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
                  controller.validate();
                },
              ),
              Obx(() => Text(controller.passwordError.value, style: TextStyle(color: Colors.red),)),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  await controller.signIn();
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
                    "Đăng nhập",
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
                  Text("Chưa có tài khoản?", style: AppStyles.s12w400.copyWith(
                    color: Colors.grey,
                  ),),
                  SizedBox(width: 4,),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.signUp);
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
                        "Đăng ký",
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
