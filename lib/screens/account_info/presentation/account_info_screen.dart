import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/account_info/presentation/account_info_controller.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/base/base_view.dart';
import '../../../common/utils/url_format.dart';
import '../../../common_widgets/app_text.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';

class AccountInfoScreen extends BaseView<AccountInfoController> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.black),
        title: AppText(
          text: "Thông tin của bạn",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                                height: 150,
                                width: 150,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.colorA8A8A8,
                                    width: 2,
                                  ),
                                ),
                                child: Obx(
                                  () => controller.imageAvatar.value.isNotEmpty
                                      ? Image.file(File(controller
                                          .imageAvatar.value.first.path))
                                      : (controller.accountInfoEntity.avatar
                                                  ?.isEmpty ??
                                              true)
                                          ? Image.asset(
                                              "assets/icons/icon_logo.png",
                                              fit: BoxFit.fitHeight,
                                            )
                                          : CachedNetworkImage(
                                              imageUrl: formatUrl(controller
                                                      .accountInfoEntity
                                                      .avatar ??
                                                  ""),
                                              fit: BoxFit.fitHeight,
                                            ),
                                )),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: GestureDetector(
                                onTap: () async {
                                  final ImagePicker picker = ImagePicker();
                                  final XFile? image = await picker.pickImage(
                                      source: ImageSource.gallery);
                                  if (image != null) {
                                    controller.imageAvatar.value
                                      ..clear()
                                      ..add(image);
                                    controller.imageAvatar.refresh();
                                  }
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.color330AC7,
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Tên tài khoản",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.usernameController,
                      enabled: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Email",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.emailController,
                    ),
                    Obx(() => Text(
                          controller.emailError.value,
                          style: AppStyles.s12w400.copyWith(
                            color: AppColors.red01,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Số điện thoại",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.phoneController,
                    ),
                    Obx(() => Text(
                          controller.phoneError.value,
                          style: AppStyles.s12w400.copyWith(
                            color: AppColors.red01,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Tên",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.firstNameController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Họ",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.lastNameController,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await controller.updateAccountInfo();
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
                        "Cập nhật",
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
