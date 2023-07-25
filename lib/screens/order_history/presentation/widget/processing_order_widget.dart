import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/utils/url_format.dart';
import 'package:grocery_app/screens/order_history/presentation/order_history_view_model.dart';

import '../../../../common/utils/number_format.dart';
import '../../../../entity/order_entity.dart';
import '../../../../routes/app_routes.dart';
import '../../../../styles/colors.dart';

class ProcessingOrderWidget extends StatelessWidget {
  ProcessingOrderWidget({Key? key, required this.orders})
      : super(key: key);

  final List<OrderEntity> orders;

  final OrderHistoryViewModel controller = Get.find<OrderHistoryViewModel>();

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
              return ProcessingOrderItemWidget(order: orders[index]);
            },
            itemCount: orders.length,
          );
  }
}

class ProcessingOrderItemWidget extends StatelessWidget {
  ProcessingOrderItemWidget({
    super.key,
    required this.order,
  });

  final OrderEntity order;
  final OrderHistoryViewModel controller = Get.find<OrderHistoryViewModel>();


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.orderDetail, arguments: order);
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
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, itemIndex) {
                List<OrderItemEntity> items = order.items ?? [];
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
              itemCount: order.items?.length ?? 0,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  "${formatNumber(order.amount ?? 0)} đ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.red01),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.dialog(
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: EdgeInsets.all(16),
                                width: Get.width * 0.9,
                                height: 300,
                                child: Column(
                                    children: [
                                      Text("Xác nhận đặt hàng", style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.black,
                                        decoration: TextDecoration.none,
                                        fontFamily: "Roboto",
                                      ),),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Image.asset("assets/icons/icon_logo.png",
                                        width: 100,
                                        height: 100,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text("Bạn có chắc chắn muốn hủy đơn hàng này không?", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.black,
                                        decoration: TextDecoration.none,
                                        fontFamily: "Roboto",
                                      ),),
                                      Spacer(),
                                      Container(
                                        height: 40,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: Container(
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                        color: AppColors.red01.withOpacity(0.3),
                                                        borderRadius: BorderRadius.circular(8)
                                                    ),
                                                    child: Center(
                                                      child: Text("Thoát", style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                        color: AppColors.red01,
                                                        decoration: TextDecoration.none,
                                                        fontFamily: "Roboto",
                                                      ),),
                                                    )

                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () async {
                                                  await controller.cancelProcessingOrder(id: order.id ?? 0);
                                                },
                                                child: Container(
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                        color: AppColors.primaryColor,
                                                        borderRadius: BorderRadius.circular(8)
                                                    ),
                                                    child: Center(
                                                      child: Text("Hủy", style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                        color: AppColors.white,
                                                        decoration: TextDecoration.none,
                                                        fontFamily: "Roboto",
                                                      ),),
                                                    )
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ]

                                ),
                              ),

                            ],
                          )
                      );


                      // controller.cancelProcessingOrder(id: order.id ?? 0);
                    },
                    child: Text("Hủy đơn hàng"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red01,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
