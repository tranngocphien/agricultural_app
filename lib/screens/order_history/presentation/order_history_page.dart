import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/order_history/presentation/order_history_view_model.dart';

import '../../../common/base/base_view.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';
import 'widget/cancel_order_widget.dart';
import 'widget/complete_order_widget.dart';
import 'widget/delivering_order_widget.dart';
import 'widget/processing_order_widget.dart';

class OrderHistoryScreen extends BaseView<OrderHistoryViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorF8F8F8,
      appBar: AppBar(
        title: Text("Lịch sử đơn hàng",
            style: AppStyles.s18w600.copyWith(color: AppColors.black)),
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
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              indicatorColor: AppColors.primaryColor,
              indicatorWeight: 3,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
              tabs: [
                Tab(
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      "Đang xử lý",
                      style: AppStyles.s14w600.copyWith(
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      "Đang giao",
                      style: AppStyles.s14w600.copyWith(color: AppColors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      "Hoàn thành",
                      style: AppStyles.s14w600.copyWith(color: AppColors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      "Đã hủy",
                      style: AppStyles.s14w600.copyWith(color: AppColors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
              padding: EdgeInsets.symmetric(horizontal: 20),
              labelStyle: AppStyles.s16w400.copyWith(color: AppColors.black),
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: ProcessingOrderWidget(
                    orders: controller.processOrder,
                  ),
                ),
                Container(
                  child: DeliveringOrderWidget(
                    orders: controller.confirmOrder,
                  ) ,
                ),
                Container(
                  child: CompleteOrderWidget(
                    orders: controller.completeOrder
                  )
                ),
                Container(
                  child: CancelOrderWidget(
                    orders: controller.cancelOrder
                  )
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

