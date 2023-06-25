import 'package:flutter/material.dart';
import 'package:grocery_app/common/utils/number_format.dart';

import '../../../../entity/product_entity.dart';
import '../../../../styles/colors.dart';

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
          // onItemClicked(context, items[index]);
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
                      child: Image.network(
                        product.images
                            ?.first ??
                            "",
                        fit: BoxFit.cover,
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
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "Đơn vị: " +
                              (product.sku ??
                                  ""),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                        formatNumber(product.price ?? 0),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ))
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
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
                    )
                  ],
                )
              ],
            )));
  }
}
