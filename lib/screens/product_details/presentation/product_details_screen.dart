import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/utils/number_format.dart';
import 'package:grocery_app/common/utils/url_format.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/screens/product_details/presentation/product_details_view_model.dart';
import '../../../common/base/base_view.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';
import '../../cart/presentation/cart_view_model.dart';

class ProductDetailsScreen extends BaseView<ProductDetailViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.black),
        // leading: GestureDetector(
        //     onTap: () {
        //       Get.back();
        //     },
        //     child: Container(
        //       height: 60,
        //       width: 60,
        //       child: Icon(
        //         Icons.arrow_back_ios,
        //         size: 16,
        //         color: AppColors.black,
        //       ),
        //     )),
        title: AppText(
          text: controller.productEntity.name ?? "",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider.builder(
                    itemCount: controller.productEntity.images?.length ?? 0,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        imageUrl: formatUrl(
                            controller.productEntity.images?[itemIndex] ?? ""),
                        fit: BoxFit.cover,
                      ),
                    ),
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      aspectRatio: 2.0,
                      initialPage: 2,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              controller.productEntity.name ?? "",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 8),
                                child: Text(
                                  controller.productEntity.category
                                          ?.categoryName ??
                                      "",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              formatNumber(controller.productEntity.price ?? 0),
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.red01),
                            ),
                            Text(
                              "đ",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.red01),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "/" + (controller.productEntity.sku ?? ""),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.red01),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Xuất xứ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      controller.productEntity.origin ?? "",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.supplierInfo,
                                        arguments:
                                            controller.productEntity.supplier);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nhà cung cấp",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        controller
                                                .productEntity.supplier?.name ??
                                            "",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Mô tả",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          controller.productEntity.description ?? "",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Cách bảo quản",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          controller.productEntity.preservation ?? "",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Giấy chứng nhận",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        if (controller
                                .productEntity.certificateImages?.isNotEmpty ??
                            false)
                          Container(
                            height: 150,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return CachedNetworkImage(
                                  imageUrl: formatUrl(controller.productEntity
                                          .certificateImages?[index] ??
                                      ""),
                                  fit: BoxFit.cover,
                                );
                              },
                              itemCount: controller.productEntity
                                      .certificateImages?.length ??
                                  0,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Đánh giá",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ...?controller.productEntity.comments?.map((e) =>
                            Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        child: Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: AppColors.primaryColor,
                                                        width: 2)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                  child: CachedNetworkImage(
                                                    imageUrl: formatUrl(
                                                        e.owner?.avatar ?? ""),
                                                    width: 32,
                                                    height: 32,
                                                    fit: BoxFit.cover,
                                                  ),
                                                )),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              e.owner?.username ?? "",
                                              style: AppStyles.s12w400.copyWith(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.content ?? "",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "${e.rate ?? 0}",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                  size: 24,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.find<CartViewModel>()
                  .addItemToCart(controller.productEntity);
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
                        "Thêm vào giỏ hàng",
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
