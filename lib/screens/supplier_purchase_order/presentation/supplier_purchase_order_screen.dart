import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/utils/number_format.dart';
import 'package:grocery_app/entity/purchase_order_entity.dart';
import 'package:grocery_app/screens/supplier_purchase_order/presentation/supplier_purchase_order_controller.dart';

import '../../../common/base/base_view.dart';
import '../../../common/utils/datetime_format.dart';
import '../../../common_widgets/app_text.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';
import '../../supplier_product/presentation/widget/supplier_product_widget.dart';
import 'widget/purchase_order_widget.dart';

class SupplierPurchaseOrderScreen
    extends BaseView<SupplierPurchaseOrderController> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorF8F8F8,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: AppText(
          text: "Đơn đặt hàng",
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [],
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
                      "Chờ xác nhận",
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
                      "Đang tiến hành",
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
                      "Đã từ chối",
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
              child: TabBarView(
                children: [
                  Obx(() => controller.idlePurchaseOrders.isEmpty
                      ? Center(
                          child: Text(
                            "Bạn chưa có đơn hàng nào",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        )
                      : ListView.separated(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          itemBuilder: (context, index) {
                            return IdlePurchaseOrderWidget(
                              purchaseOrder:
                                  controller.idlePurchaseOrders[index],
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                height: 20,
                              ),
                          itemCount: controller.idlePurchaseOrders.length)),
                  Obx(() => controller.processingPurchaseOrders.isEmpty
                      ? Center(
                          child: Text(
                            "Bạn chưa có đơn hàng nào",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        )
                      : ListView.separated(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          itemBuilder: (context, index) {
                            return ProcessPurchaseOrderWidget(
                                purchaseOrder:
                                    controller.processingPurchaseOrders[index]);
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                height: 20,
                              ),
                          itemCount:
                              controller.processingPurchaseOrders.length)),
                  Obx(() => controller.completePurchaseOrders.isEmpty
                      ? Center(
                          child: Text(
                            "Bạn chưa có đơn hàng nào",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        )
                      : ListView.separated(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          itemBuilder: (context, index) {
                            return CompletePurchaseOrderWidget(
                                purchaseOrder:
                                    controller.completePurchaseOrders[index]);
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                height: 20,
                              ),
                          itemCount: controller.completePurchaseOrders.length)),
                  Obx(() => controller.rejectPurchaseOrders.isEmpty
                      ? Center(
                          child: Text(
                            "Bạn chưa có đơn hàng nào",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        )
                      : ListView.separated(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          itemBuilder: (context, index) {
                            return RejectPurchaseOrderWidget(
                                purchaseOrder:
                                    controller.rejectPurchaseOrders[index]);
                          },
                          separatorBuilder: (context, index) => SizedBox(
                                height: 20,
                              ),
                          itemCount: controller.rejectPurchaseOrders.length)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
