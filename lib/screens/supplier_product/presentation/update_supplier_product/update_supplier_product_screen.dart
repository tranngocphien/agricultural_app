import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/utils/url_format.dart';
import 'package:grocery_app/screens/supplier_product/presentation/create_supplier_product/create_supplier_product_viewmodel.dart';
import 'package:grocery_app/screens/supplier_product/presentation/update_supplier_product/update_supplier_product_viewmodel.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import '../../../../common/base/base_controller.dart';
import '../../../../common/base/base_view.dart';
import '../../../../styles/colors.dart';
import '../../../../styles/text_style.dart';

class UpdateSupplierProductScreen
    extends BaseView<UpdateSupplierProductViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.colorF8F8F8,
        appBar: AppBar(
          title: Text("Thông tin sản phẩm",
              style: AppStyles.s18w600.copyWith(color: AppColors.black)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.black),
          actions: [
            IconButton(
              icon: Icon(
                Icons.delete,
                color: AppColors.red01,
              ),
              onPressed: () {
                Get.dialog(
                  AlertDialog(
                    title: Text("Xóa sản phẩm"),
                    content: Text("Bạn có chắc chắn muốn xóa sản phẩm này?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Hủy"),
                      ),
                      TextButton(
                        onPressed: () async {
                          Get.back();
                          await controller.deleteSupplierProduct();
                        },
                        child: Text("Xóa"),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
        body: Obx(
          () => controller.loadStatus.value == LoadStatus.loading
              ? Center(
                  child: Lottie.asset('assets/json/loading.json'),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tên sản phẩm", style: AppStyles.s14w400),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          controller: controller.nameController,
                          onChanged: (value) {
                            controller.nameError.value = "";
                          },
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Obx(() => Text(
                              controller.nameError.value,
                              style:
                                  AppStyles.s12w400.copyWith(color: Colors.red),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Thể loại", style: AppStyles.s14w400),
                                SizedBox(
                                  height: 4,
                                ),
                                PopupMenuButton<int>(
                                  offset: Offset(0, 0),
                                  onSelected: (value) {
                                    controller.selectedCategory.value = value;
                                  },
                                  initialValue:
                                      controller.selectedCategory.value,
                                  itemBuilder: (context) {
                                    return controller.categories.map((e) {
                                      return PopupMenuItem(
                                        value: controller.categories.indexOf(e),
                                        child: Container(
                                            width: 150,
                                            child: Text(e.categoryName ?? "")),
                                      );
                                    }).toList();
                                  },
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.primaryColor),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            controller
                                                    .categories[controller
                                                        .selectedCategory.value]
                                                    .categoryName ??
                                                "",
                                            style: AppStyles.s14w400,
                                          ),
                                        ),
                                        Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                              ],
                            )),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Giá đề xuất", style: AppStyles.s14w400),
                                SizedBox(
                                  height: 4,
                                ),
                                TextField(
                                  controller: controller.priceController,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    controller.priceError.value = "";
                                  },
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Obx(() => Text(
                                      controller.priceError.value,
                                      style: AppStyles.s12w400
                                          .copyWith(color: Colors.red),
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                              ],
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Nơi sản xuất", style: AppStyles.s14w400),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          controller: controller.locationController,
                          onChanged: (value) {
                            controller.locationError.value = "";
                          },
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Obx(() => Text(
                              controller.locationError.value,
                              style:
                                  AppStyles.s12w400.copyWith(color: Colors.red),
                            )),
                        Text("Mô tả", style: AppStyles.s14w400),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          minLines: 3,
                          maxLines: 5,
                          controller: controller.descriptionController,
                          onChanged: (value) {
                            controller.descriptionError.value = "";
                          },
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Obx(() => Text(
                              controller.descriptionError.value,
                              style:
                                  AppStyles.s12w400.copyWith(color: Colors.red),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Cách bảo quản", style: AppStyles.s14w400),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          minLines: 3,
                          maxLines: 5,
                          controller: controller.preservationController,
                          onChanged: (value) {
                            controller.preservationError.value = "";
                          },
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Obx(() => Text(
                              controller.preservationError.value,
                              style:
                                  AppStyles.s12w400.copyWith(color: Colors.red),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Hình ảnh sản phẩm", style: AppStyles.s14w400),
                        SizedBox(
                          height: 4,
                        ),
                        Obx(
                          () => Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              InkWell(
                                onTap: () async {
                                  final List<XFile>? selectedImages =
                                      await controller.picker.pickMultiImage();
                                  if (selectedImages!.isNotEmpty) {
                                    controller.imagesProduct.value
                                        .addAll(selectedImages);
                                    controller.imagesError.value = "";
                                    controller.imagesProduct.refresh();
                                  }
                                },
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: AppColors.colorFEEAE2)),
                                  child: Center(
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ),
                              ...controller.imagesProduct.value.map((element) =>
                                  Stack(
                                    children: [
                                      Image.file(
                                        File(element.path),
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        right: 4,
                                        top: 4,
                                        child: InkWell(
                                          onTap: () {
                                            controller.imagesProduct.value
                                                .remove(element);
                                            controller.imagesProduct.refresh();
                                          },
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.5),
                                                      blurRadius: 2,
                                                      offset: Offset(0, 1))
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Icon(
                                              Icons.close,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                              ...controller.images
                                  .map((element) => Stack(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl: formatUrl(element),
                                    height: 90,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    right: 4,
                                    top: 4,
                                    child: InkWell(
                                      onTap: () {
                                        controller.images
                                            .remove(element);
                                        controller.images.refresh();
                                      },
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  blurRadius: 2,
                                                  offset: Offset(0, 1))
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        child: Icon(
                                          Icons.close,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                        Obx(() => Text(
                              controller.imagesError.value,
                              style:
                                  AppStyles.s12w400.copyWith(color: Colors.red),
                            )),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Hình ảnh giấy chứng nhận",
                            style: AppStyles.s14w400),
                        SizedBox(
                          height: 16,
                        ),
                        Obx(
                              () => Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              InkWell(
                                onTap: () async {
                                  final List<XFile>? selectedImages =
                                  await controller.picker.pickMultiImage();
                                  if (selectedImages!.isNotEmpty) {
                                    controller.imagesCertificate.value
                                        .addAll(selectedImages);
                                    controller.imagesCertificate.refresh();
                                  }
                                },
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: AppColors.colorFEEAE2)),
                                  child: Center(
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ),
                              ...controller.imagesCertificate.value.map((element) =>
                                  Stack(
                                    children: [
                                      Image.file(
                                        File(element.path),
                                        height: 90,
                                        width: 90,
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        right: 4,
                                        top: 4,
                                        child: InkWell(
                                          onTap: () {
                                            controller.imagesCertificate.value
                                                .remove(element);
                                            controller.imagesCertificate.refresh();
                                          },
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.5),
                                                      blurRadius: 2,
                                                      offset: Offset(0, 1))
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: Icon(
                                              Icons.close,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                              ...controller.certificateImages
                                  .map((element) => Stack(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl: formatUrl(element),
                                    height: 90,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    right: 4,
                                    top: 4,
                                    child: InkWell(
                                      onTap: () {
                                        controller.certificateImages
                                            .remove(element);
                                        controller.certificateImages.refresh();
                                      },
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
                                                  blurRadius: 2,
                                                  offset: Offset(0, 1))
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        child: Icon(
                                          Icons.close,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () async {
                            await controller.updateSupplierProduct();
                          },
                          child: Container(
                              child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.primaryColor),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Cập nhật sản phẩm",
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
                  ),
                ),
        ));
  }
}
