import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/common/utils/url_format.dart';

import '../../../common/base/base_view.dart';
import '../../../common_widgets/app_text.dart';
import '../../../styles/colors.dart';
import '../../../styles/text_style.dart';
import 'supplier_info_view_model.dart';

class SupplierInfoScreen extends BaseView<SupplierInfoViewModel> {

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: AppColors.black
        ),
        title: AppText(
          text: controller.supplierEntity.name ?? "",
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            CachedNetworkImage(
              width: Get.width,
              fit: BoxFit.fitWidth, imageUrl: formatUrl(controller.supplierEntity.brandImage ?? ""),
            ),
            SizedBox(height: 20,),
            AppText(
              text: controller.supplierEntity.name ?? "",
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 20,),
            AppText(
              text: controller.supplierEntity.description ?? "",
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 20,),
            Text("Địa chỉ", style: AppStyles.s14w600.copyWith(
              color: AppColors.black,
            ),),
            AppText(
              text: controller.supplierEntity.location ?? "",
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),


    );
  }
}