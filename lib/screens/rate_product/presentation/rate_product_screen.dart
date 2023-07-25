import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/utils/url_format.dart';
import 'package:grocery_app/screens/rate_product/presentation/rate_product_view_model.dart';

import '../../../common/base/base_view.dart';
import '../../../common/utils/number_format.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';

class RateProductScreen extends BaseView<RateProductViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Đánh giá sản phẩm',
          style: AppStyles.s18w600primary,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: AppColors.primaryColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  CachedNetworkImage(
                    imageUrl : formatUrl(controller.orderItemEntity.product?.images?.first ?? ""),
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.orderItemEntity.product?.name ?? "",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "${formatNumber(controller.orderItemEntity.product?.price ?? 0)} đ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.red01),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            "${controller.orderItemEntity.quantity} x",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.darkGrey),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "${controller.orderItemEntity.product?.sku ?? ""}",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.darkGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                controller.rate(rating.round());
              },
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: controller.contentController,
                minLines: 5,
                maxLines: 8,
                onChanged: (value) {
                  controller.contentError.value = "";
                },
                decoration: InputDecoration(
                  hintText: "Nhập đánh giá của bạn",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColors.darkGrey,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColors.darkGrey,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColors.darkGrey,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              controller.contentError.value,
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () async {
                await controller.rateProduct();
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  "Gửi đánh giá",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
