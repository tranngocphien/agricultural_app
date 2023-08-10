import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_view.dart';
import 'package:grocery_app/common/utils/number_format.dart';
import 'package:grocery_app/screens/place_order/presentation/place_order_view_model.dart';

import '../../../common/utils/url_format.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';

class PlaceOrderScreen extends BaseView<PlaceOrderViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Đặt hàng"),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/location_icon.svg",
                                color: AppColors.primaryColor,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "Địa chỉ nhận hàng",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.bottomSheet(Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              child: Column(
                                children: [
                                  Text("Chọn địa chỉ nhận hàng", style: AppStyles.s16w600.copyWith(
                                    color: AppColors.black
                                  ),),
                                  SizedBox(height: 16,),
                                  Expanded(
                                    child: ListView.separated(
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            controller.selectedShippingAddress.value = index;
                                            Get.back();
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 10),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: AppColors.darkGrey,
                                              ),
                                              borderRadius: BorderRadius.circular(8),
                                              color: controller.selectedShippingAddress.value == index
                                                  ? AppColors.colorFEEAE2
                                                  : Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    controller
                                                            .shippingAddress[index]
                                                            .address ??
                                                        "",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400)),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  controller
                                                          .shippingAddress[index]
                                                          .name ??
                                                      "",
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  controller
                                                          .shippingAddress[index]
                                                          .phoneNumber ??
                                                      "",
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: 16,
                                        );
                                      },
                                      itemCount: controller.shippingAddress.length,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.back();
                                      Get.toNamed(AppRoutes.createAddress);
                                    },
                                    child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius:
                                            BorderRadius.circular(8)),
                                        child: Center(
                                          child: Text(
                                            "Tạo địa chỉ mới",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "Roboto",
                                            ),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ));
                          },
                          child: Obx(() => controller.shippingAddress.isNotEmpty ? Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.darkGrey.withOpacity(0.3),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    controller
                                        .shippingAddress[controller
                                        .selectedShippingAddress.value]
                                        .address ??
                                        "",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  controller
                                      .shippingAddress[controller
                                      .selectedShippingAddress.value]
                                      .name ??
                                      "",
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  controller
                                      .shippingAddress[controller
                                      .selectedShippingAddress.value]
                                      .phoneNumber ??
                                      "",
                                ),
                              ],
                            ),
                          ) : Container(
                            height: 50,
                            width: Get.width,
                            child: Center(child: Text("Tạo địa chỉ mới", style: AppStyles.s18w600.copyWith(
                              color: AppColors.primaryColor
                            ),)),
                          ),)
                        )
                      ],
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Row(
                          children: [
                            Image.network(
                              formatUrl(controller.items[index].product?.images?.first ?? ""),
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
                                  controller.items[index].product?.name ?? "",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "${formatNumber(controller.items[index].product?.price ?? 0)} đ",
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
                                      "${controller.items[index].amount} x",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.darkGrey),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "${controller.items[index].product?.sku ?? ""}",
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
                    itemCount: controller.items.length,
                  ),
                  SizedBox(
                    height: 4,
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
                        "${formatNumber(controller.totalPrice.value)} đ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.red01),
                      ),
                      SizedBox(
                        width: 32,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phí giao hàng",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${formatNumber(controller.shippingFee.value)} đ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.red01),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                                " (Miễn phí giao hàng cho đơn hàng trên 200.000đ)",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.darkGrey)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Phương thức thanh toán",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Obx(() => Text(
                            controller
                                    .payments[
                                        controller.selectedPaymentType.value]
                                    .name ??
                                "",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black)))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: AppColors.darkGrey.withOpacity(0.2), width: 1))),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Text(
                  "Tổng cộng",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "${formatNumber(controller.totalPrice.value + controller.shippingFee.value)} đ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.red01),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.dialog(Column(
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
                          child: Column(children: [
                            Text(
                              "Xác nhận đặt hàng",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                                decoration: TextDecoration.none,
                                fontFamily: "Roboto",
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Image.asset(
                              "assets/icons/icon_logo.png",
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Bạn có chắc chắn muốn đặt hàng với đơn hàng này?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                                decoration: TextDecoration.none,
                                fontFamily: "Roboto",
                              ),
                            ),
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
                                              color: AppColors.red01
                                                  .withOpacity(0.3),
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Center(
                                            child: Text(
                                              "Hủy",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.red01,
                                                decoration: TextDecoration.none,
                                                fontFamily: "Roboto",
                                              ),
                                            ),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () async {
                                        Get.back();
                                        await controller.placeOrder();
                                      },
                                      child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: AppColors.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Center(
                                            child: Text(
                                              "Đặt hàng",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.white,
                                                decoration: TextDecoration.none,
                                                fontFamily: "Roboto",
                                              ),
                                            ),
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                      ],
                    ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "Đặt hàng",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void showPopUpConfirm(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            width: 200,
          );
        });
  }
}
