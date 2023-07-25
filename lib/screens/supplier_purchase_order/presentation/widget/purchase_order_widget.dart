import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/utils/datetime_format.dart';
import '../../../../common/utils/number_format.dart';
import '../../../../entity/purchase_order_entity.dart';
import '../../../../styles/colors.dart';
import '../../../../styles/text_style.dart';
import '../../../supplier_product/presentation/widget/supplier_product_widget.dart';
import '../supplier_purchase_order_view_model.dart';

class IdlePurchaseOrderWidget extends StatelessWidget {
  const IdlePurchaseOrderWidget({
    super.key,
    required this.purchaseOrder,
  });

  final PurchaseOrderEntity purchaseOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: Offset(0, 1))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Mã đơn hàng : ${purchaseOrder.id}"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          if (purchaseOrder.supplierProduct != null)
            SupplierProductWidget(
              product: purchaseOrder.supplierProduct!,
            ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Số lượng"),
              Text(
                "${purchaseOrder.amount}",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Giá tiền"),
              Text(
                "${formatNumber(purchaseOrder.price ?? 0)} VNĐ",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ngày nhập hàng"),
              Text(
                "${formatDate(purchaseOrder.harvestAt ?? DateTime.now())}",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            children: [
              Text("Ghi chú"),
              SizedBox(
                width: 20,
              ),
              Expanded(child: Text("${purchaseOrder.note}"))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Get.dialog(
                      AlertDialog(
                        title: Text("Xác nhận đơn hàng"),
                        content: Text(
                            "Bạn có chắc chắn muốn xác nhận đơn hàng này không?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              "Hủy",
                              style: AppStyles.s14w400
                                  .copyWith(color: AppColors.red01),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              Get.back();
                              if (purchaseOrder.id != null)
                                await Get.find<SupplierPurchaseOrderViewModel>()
                                    .confirmOrder(id: purchaseOrder.id!);
                            },
                            child: Text(
                              "Xác nhận",
                              style: AppStyles.s14w400
                                  .copyWith(color: AppColors.primaryColor),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        "Xác nhận",
                        style: AppStyles.s16w600.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.dialog(
                          AlertDialog(
                            title: Text("Từ chối đơn hàng"),
                            content: Text(
                                "Bạn có chắc chắn muốn từ chối đơn hàng này không?"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  "Hủy",
                                  style: AppStyles.s14w400
                                      .copyWith(color: AppColors.red01),
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  Get.back();
                                  if (purchaseOrder.id != null)
                                    await Get.find<SupplierPurchaseOrderViewModel>()
                                        .cancelOrder(id: purchaseOrder.id!);
                                },
                                child: Text(
                                  "Xác nhận",
                                  style: AppStyles.s14w400
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                              ),
                            ],
                          ),
                        );

                      },
                      child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.red01,
                  ),
                  child: Center(
                      child: Text(
                        "Hủy",
                        style: AppStyles.s16w600.copyWith(color: Colors.white),
                      ),
                  ),
                ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProcessPurchaseOrderWidget extends StatelessWidget {
  const ProcessPurchaseOrderWidget({
    super.key,
    required this.purchaseOrder,
  });

  final PurchaseOrderEntity purchaseOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: Offset(0, 1))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Mã đơn hàng : ${purchaseOrder.id}"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          if (purchaseOrder.supplierProduct != null)
            SupplierProductWidget(
              product: purchaseOrder.supplierProduct!,
            ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Số lượng"),
              Text(
                "${purchaseOrder.amount}",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Giá tiền"),
              Text(
                "${formatNumber(purchaseOrder.price ?? 0)} VNĐ",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ngày nhập hàng"),
              Text(
                "${formatDate(purchaseOrder.harvestAt ?? DateTime.now())}",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            children: [
              Text("Ghi chú"),
              SizedBox(
                width: 20,
              ),
              Expanded(child: Text("${purchaseOrder.note}"))
            ],
          ),
        ],
      ),
    );
  }
}

class CompletePurchaseOrderWidget extends StatelessWidget {
  const CompletePurchaseOrderWidget({
    super.key,
    required this.purchaseOrder,
  });

  final PurchaseOrderEntity purchaseOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: Offset(0, 1))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Mã đơn hàng : ${purchaseOrder.id}"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          if (purchaseOrder.supplierProduct != null)
            SupplierProductWidget(
              product: purchaseOrder.supplierProduct!,
            ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Số lượng"),
              Text(
                "${purchaseOrder.amount}",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Giá tiền"),
              Text(
                "${formatNumber(purchaseOrder.price ?? 0)} VNĐ",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ngày nhập hàng"),
              Text(
                "${formatDate(purchaseOrder.harvestAt ?? DateTime.now())}",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            children: [
              Text("Ghi chú"),
              SizedBox(
                width: 20,
              ),
              Expanded(child: Text("${purchaseOrder.note}"))
            ],
          ),
        ],
      ),
    );
  }
}

class RejectPurchaseOrderWidget extends StatelessWidget {
  const RejectPurchaseOrderWidget({
    super.key,
    required this.purchaseOrder,
  });

  final PurchaseOrderEntity purchaseOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: Offset(0, 1))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Mã đơn hàng : ${purchaseOrder.id}"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          if (purchaseOrder.supplierProduct != null)
            SupplierProductWidget(
              product: purchaseOrder.supplierProduct!,
            ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Số lượng"),
              Text(
                "${purchaseOrder.amount}",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Giá tiền"),
              Text(
                "${formatNumber(purchaseOrder.price ?? 0)} VNĐ",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ngày nhập hàng"),
              Text(
                "${formatDate(purchaseOrder.harvestAt ?? DateTime.now())}",
                style: AppStyles.s14w600.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Row(
            children: [
              Text("Ghi chú"),
              SizedBox(
                width: 20,
              ),
              Expanded(child: Text("${purchaseOrder.note}"))
            ],
          ),
        ],
      ),
    );
  }
}
