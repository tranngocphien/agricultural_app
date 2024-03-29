import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/utils/datetime_format.dart';
import '../../../../common/utils/number_format.dart';
import '../../../../common/utils/url_format.dart';
import '../../../../entity/order_entity.dart';
import '../../../../routes/app_routes.dart';
import '../../../../styles/colors.dart';
import '../../../../styles/text_style.dart';

class CancelOrderWidget extends StatelessWidget {
  const CancelOrderWidget({
    super.key,
    required this.orders,
  });

  final List<OrderEntity> orders;

  @override
  Widget build(BuildContext context) {
    return orders.length == 0
        ? Center(
            child: Text(
              "Bạn chưa có đơn hàng nào",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.orderDetail,
                    arguments: orders[index],
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10, top: 10),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mã đơn hàng: ${orders[index].id ?? ""}",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            formatDate(
                              orders[index].createTime ?? DateTime.now(),
                            ),
                            style: AppStyles.s14w400.copyWith(
                              color: AppColors.black,
                            ),
                          )
                        ],
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, itemIndex) {
                          List<OrderItemEntity> items = orders[index].items ?? [];
                          return Container(
                            child: Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: formatUrl(items[itemIndex].product?.images?.first ?? ""),
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
                                      items[itemIndex].product?.name ?? "",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "${formatNumber(items[itemIndex].product?.price ?? 0)} đ",
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
                                          "${items[itemIndex].quantity} x",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.darkGrey),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "${items[itemIndex].product?.sku ?? ""}",
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
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            thickness: 1,
                          );
                        },
                        itemCount: orders[index].items?.length ?? 0,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Tổng cộng",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "${formatNumber(orders[index].amount ?? 0)} đ",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.red01),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: orders.length,
          );
  }
}
