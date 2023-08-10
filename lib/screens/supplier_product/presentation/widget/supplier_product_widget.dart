import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/utils/number_format.dart';
import 'package:grocery_app/common/utils/url_format.dart';

import '../../../../entity/product_entity.dart';
import '../../../../entity/supplier_product_entity.dart';
import '../../../../routes/app_routes.dart';
import '../../../../styles/colors.dart';

class SupplierProductWidget extends StatelessWidget {
  const SupplierProductWidget({super.key, required this.product});

  final SupplierProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.updateSupplierProduct, arguments: product);
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
                    border:
                        Border.all(color: AppColors.darkGrey.withOpacity(0.8))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover, imageUrl: formatUrl(product.images?.first ?? ""),
                  ),
                )),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  product.productName ?? "",
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
                  product.location ?? "",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(formatNumber(product.expectedPrice ?? 0) + " đ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ))
              ],
            ),
          ],
        )));
  }
}
