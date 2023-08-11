import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/shipping_address/presentation/shipping_address_view_model.dart';

import '../../../common/base/base_view.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';

class ShippingAddressScreen extends BaseView<ShippingAddressViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Địa chỉ nhận hàng',
          style: AppStyles.s18w600primary,
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      margin:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.darkGrey.withOpacity(0.3),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(controller.shippingAddress[index].address ?? "",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            controller.shippingAddress[index].name ?? "",
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            controller.shippingAddress[index].phoneNumber ?? "",
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: controller.shippingAddress.length,
                )),
            SizedBox(height: 16,),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.createAddress);
              },
              child: Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
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
      ),
    );
  }
}
