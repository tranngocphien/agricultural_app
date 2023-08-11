import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/rate_product/service/rate_product_service.dart';

import '../../../common/base/base_controller.dart';
import '../../../entity/order_entity.dart';

class RateProductViewModel extends BaseViewModel {
  final RateProductService rateProductService;

  final OrderItemEntity orderItemEntity = Get.arguments;
  final contentController = TextEditingController();
  final contentError = "".obs;
  final rate = 0.obs;

  RateProductViewModel(this.rateProductService);

  Future<void> rateProduct() async {
    showLoading();
    if (contentController.text.trim().isEmpty) {
      contentError.value = "Please enter your comment";
      Get.back();
      return;
    } else {
      await networkCall(
        rateProductService.rateProduct(
            orderItemId: orderItemEntity.id ?? 0,
            rate: rate.value,
            content: contentController.text.trim()),
        onSuccess: (data) {
          Get.back();
          Get.back();
          Get.snackbar("Thông báo", "Đánh giá sản phẩm thành công");
          Get.back(result: data);
        },
      );
    }
  }
}
