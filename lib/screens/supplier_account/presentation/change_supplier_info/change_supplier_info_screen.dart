import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/base/base_view.dart';
import '../../../../common/utils/url_format.dart';
import '../../../../common_widgets/app_text.dart';
import '../../../../styles/colors.dart';
import '../../../../styles/text_style.dart';
import 'change_supplier_info_controller.dart';

class ChangeSupplierInfoScreen extends BaseView<ChangeSupplierInfoController> {

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: AppColors.black
        ),
        title: AppText(
          text: "Chỉnh sửa thông tin nhà cung cấp",
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
                                height: 300,
                                width: 300,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                ),
                                child: Obx(
                                      () => controller.imageAvatar.value.isNotEmpty
                                      ? Image.file(File(controller
                                      .imageAvatar.value.first.path))
                                      : (controller.supplierInfo.value?.brandImage
                                      ?.isEmpty ??
                                      true)
                                      ? Image.asset(
                                    "assets/icons/icon_logo.png",
                                    fit: BoxFit.fitHeight,
                                  )
                                      : CachedNetworkImage(
                                    imageUrl: formatUrl(controller
                                        .supplierInfo.value?.brandImage ??
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
                      "Tên nhà cung cấp",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.nameController,
                    ),
                    Obx(() => Text(
                      controller.nameError.value,
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.red01,
                      ),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Địa điểm",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.locationController,
                    ),
                    Obx(() => Text(
                      controller.nameError.value,
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.red01,
                      ),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mô tả",
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      controller: controller.descriptionController,
                      minLines: 5,
                      maxLines: 10,
                    ),
                    Obx(() => Text(
                      controller.nameError.value,
                      style: AppStyles.s12w400.copyWith(
                        color: AppColors.red01,
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await controller.updateSupplierInfo();
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
