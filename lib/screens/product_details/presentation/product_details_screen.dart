import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/utils/number_format.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/screens/product_details/presentation/product_details_controller.dart';
import '../../../common/base/base_view.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/colors.dart';

class ProductDetailsScreen extends BaseView<ProductDetailController> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 60,
              width: 60,
              child: Icon(
                Icons.arrow_back_ios,
                size: 16,
                color: AppColors.black,
              ),
            )),
        title: AppText(
          text: controller.productEntity.name ?? "",
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.report,
                color: AppColors.primaryColor,
              ),
            ),
          )
        ],
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
                    itemBuilder:
                        (BuildContext context, int itemIndex, int pageViewIndex) =>
                            ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        controller.productEntity.images?[itemIndex] ?? "",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(width: 16,)

                    ],
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
                              style:
                                  TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding:
                                    EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                child: Text(
                                  controller.productEntity.category?.categoryName ?? "",
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
                                      "Nguồn gốc",
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
                                          fontSize: 16, fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.supplierInfo, arguments: controller.productEntity.supplier);
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                        controller.productEntity.supplier?.name ?? "",
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.w600),
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
                        Text(
                          "Cách sử dụng",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          controller.productEntity.directionForUse ?? "",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
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
                        Container(
                          height: 150,
                          child: ListView.builder(itemBuilder: (context, index) {
                            return Image.network(
                              controller.productEntity.images?[index] ?? "",
                              fit: BoxFit.cover,
                            );
                          },
                            itemCount: controller.productEntity.images?.length ?? 0,
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
                        ...?controller.productEntity.comments?.map((e) => Container(
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red
                                ),
                              ),
                              SizedBox(width: 16,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(e.content ?? "", style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400
                                    ),),
                                    SizedBox(height: 4,),
                                    Row(
                                      children: [
                                        Text("${e.rate ?? 0}", style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600
                                        ),),
                                        SizedBox(width: 4,),
                                        Icon(Icons.star, color: Colors.amber, size: 24,),
                                      ],
                                    )

                                  ],
                                ),
                              )
                            ],
                          ),

                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(8),
                  color: AppColors.primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Thêm vào giỏ hàng", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white
                  ),)
                ],
              ),
            )

          )
        ],
      ),
    );
  }
}
