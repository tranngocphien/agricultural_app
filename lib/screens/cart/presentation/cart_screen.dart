import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_view.dart';
import 'package:grocery_app/common/utils/number_format.dart';
import 'package:grocery_app/common_widgets/app_button.dart';
import 'package:grocery_app/screens/cart/presentation/widget/cart_item_widget.dart';
import 'package:lottie/lottie.dart';

import '../../../common/global_state.dart';
import '../../../routes/app_routes.dart';
import '../checkout_bottom_sheet.dart';
import 'cart_view_model.dart';

class CartScreen extends BaseView<CartViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "Giỏ hàng",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      width: double.maxFinite,
                      child: CartItemWidget(
                        item: controller.items[index],
                      ) ,
                    );
                  }, separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Divider(
                    thickness: 1,
                  ),
                );
              }, itemCount: controller.items.length),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Tổng cộng",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 8,),
                Obx(() => Text(
                  "${formatNumber(controller.totalPrice.value)} đ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ) ),
                SizedBox(width: 8,),
              ],
            ),
            getCheckoutButton(context)
          ],
        ),
      ),
    );
  }

  Widget getCheckoutButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: AppButton(
        label: "Đặt hàng",
        fontWeight: FontWeight.w600,
        padding: EdgeInsets.symmetric(vertical: 30),
        onPressed: () {
          if(GlobalState.isLogin.value == false) {
            Get.toNamed(AppRoutes.signIn);
            return;
          }
          Get.toNamed(AppRoutes.placeOrder, arguments: controller.items);
          // showBottomSheet(context);
        },
      ),
    );
  }

  void showBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext bc) {
          return CheckoutBottomSheet();
        });
  }
}
