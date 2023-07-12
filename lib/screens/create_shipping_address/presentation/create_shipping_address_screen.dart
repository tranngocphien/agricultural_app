import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/base/base_view.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';
import 'create_shipping_address_controller.dart';


class CreateShippingAddressScreen extends BaseView<CreateShippingAddressController> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thêm địa chỉ nhận hàng',
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20
              ),
              Text("Họ và tên người nhận", style: AppStyles.s16w400.copyWith(
                color: AppColors.black
              ),),
              SizedBox(
                height: 4
              ),
              TextField(
                controller: controller.nameController,
              ),
              Obx(() => Text(controller.nameError.value, style: AppStyles.s12w400.copyWith(
                  color: AppColors.red01
              ),)),
              SizedBox(
                height: 10
              ),
              Text("Số điện thoại nhận hàng", style: AppStyles.s16w400.copyWith(
                  color: AppColors.black
              ),),
              SizedBox(
                  height: 4
              ),
              TextField(
                controller: controller.phoneController,
              ),
              Obx(() => Text(controller.phoneError.value, style: AppStyles.s12w400.copyWith(
                  color: AppColors.red01
              ),)),
              SizedBox(
                  height: 10
              ),
              Text("Địa chỉ nhận hàng", style: AppStyles.s16w400.copyWith(
                  color: AppColors.black
              ),),
              SizedBox(
                  height: 4
              ),
              TextField(
                controller: controller.addressController,
                maxLines: 5,
                minLines: 3,
              ),
              Obx(() => Text(controller.addressError.value, style: AppStyles.s12w400.copyWith(
                  color: AppColors.red01
              ),)),
              SizedBox(
                  height: 10
              ),
              GestureDetector(
                onTap: () {
                  controller.createShippingAddress();
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
        ),
      ),

    );
  }
}
