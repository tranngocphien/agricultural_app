import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/entity/product_entity.dart';
import 'package:grocery_app/screens/cart/presentation/cart_controller.dart';
import 'package:grocery_app/styles/colors.dart';

import '../common/utils/number_format.dart';
import '../common/utils/url_format.dart';

class ProductItemCard extends StatelessWidget {
  ProductItemCard({Key? key, required this.item})
      : super(key: key);
  final ProductEntity item;

  final double width = 174;
  final double height = 250;
  final Color borderColor = Color(0xffE2E2E2);
  final double borderRadius = 18;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(imageUrl: formatUrl(item.images?.first ?? ""), height: 100, width: 160, fit: BoxFit.fitWidth, ),
            SizedBox(
              height: 20,
            ),
            AppText(
              text: item.name ?? "",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                AppText(
                  text: formatNumber(item.price ?? 0) + "đ",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(item.sku ?? ""),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.find<CartController>().addItemToCart(item);
                  },
                    child: addWidget())
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget addWidget() {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: AppColors.primaryColor),
      child: Center(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
