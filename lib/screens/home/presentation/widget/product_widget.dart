import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/utils/number_format.dart';
import 'package:grocery_app/common/utils/url_format.dart';

import '../../../../entity/product_entity.dart';
import '../../../../routes/app_routes.dart';
import '../../../../styles/colors.dart';
import '../../../cart/presentation/cart_controller.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.product
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.productDetail,
              arguments: product);
        },
        child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.primaryColor,
                        border: Border.all(
                            color: AppColors.darkGrey
                                .withOpacity(0.8))),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(imageUrl: formatUrl(product.images?.first ?? "",), fit: BoxFit.cover,)
                    )),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      product.name ?? "",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      product.origin ?? "",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.color4D4C4C,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                            formatNumber(product.price ?? 0) + "đ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                            )),
                        Text(
                          " /" +
                              (product.sku ??
                                  ""),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color4D4C4C,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.find<CartController>().addItemToCart(product);

                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(17),
                            color: AppColors.primaryColor),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
