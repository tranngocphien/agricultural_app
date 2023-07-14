import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/supplier_product/presentation/supplier_product_controller.dart';

import '../../../common/base/base_view.dart';
import '../../../common_widgets/app_text.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/colors.dart';
import 'widget/supplier_product_widget.dart';

class SupplierProductScreen extends BaseView<SupplierProductController> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: AppText(
          text: "Sản phẩm của bạn",
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: AppColors.primaryColor,
            ),
            onPressed: () {
              Get.toNamed(AppRoutes.createSupplierProduct);
            },
          )
        ],
      ),
      body: Obx(() => ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          itemBuilder: (context, index) {
            return SupplierProductWidget(
              product: controller.supplierProducts[index],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
          itemCount: controller.supplierProducts.length)),
    );
  }
}
