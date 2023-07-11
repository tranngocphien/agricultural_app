import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:grocery_app/entity/shipping_address_entity.dart';
import 'package:grocery_app/screens/place_order/models/place_order_request.dart';
import 'package:grocery_app/screens/place_order/service/place_order_service.dart';

import '../../../common/base/base_controller.dart';
import '../../../entity/cart_item.dart';
import '../../../entity/payment_type.dart';
import '../../../routes/app_routes.dart';

class PlaceOrderController extends BaseController {
  final List<CartItemEntity> items = Get.arguments;
  final payments = List<PaymentTypeEntity>.empty(growable: true).obs;
  final shippingAddress = List<ShippingAddressEntity>.empty(growable: true).obs;
  final selectedPaymentType = 0.obs;
  final selectedShippingAddress = 0.obs;

  final totalPrice = 0.obs;
  final shippingFee = 20000.obs;
  final PlaceOrderService placeOrderService;
  final phoneController = TextEditingController();

  final phoneError = "".obs;

  PlaceOrderController(this.placeOrderService);

  @override
  void onInit() async {
    super.onInit();
    loadStatus(LoadStatus.loading);
    totalPrice.value = getTotalPrice();
    if (totalPrice > 200000) {
      shippingFee.value = 0;
    }
    await getPaymentTypes();
    await getShippingAddress();
    loadStatus(LoadStatus.success);
  }

  int getTotalPrice() {
    int total = 0;
    items.forEach((element) {
      total += (element.product?.price ?? 0) * (element.amount ?? 0);
    });
    return total;
  }

  Future<void> getPaymentTypes() async {
    await networkCall(
      placeOrderService.getPaymentTypes(),
      onSuccess: (data) {
        payments.addAll(data);
      },
    );
  }

  Future<void> getShippingAddress() async {
    await networkCall(
      placeOrderService.getShippingAddress(),
      onSuccess: (data) {
        shippingAddress.addAll(data);
      },
    );
  }

  bool checkPhoneNumber() {
    if (phoneController.text.isEmpty) {
      phoneError.value = "Bạn chưa nhập số điện thoại";
      return false;
    }
    if (phoneController.text.length < 10) {
      phoneError.value = "Số điện thoại không đúng định dạng";
      return false;
    }
    phoneError.value = "";
    return true;
  }

  Future<void> placeOrder() async {
    showLoading();
    PlaceOrderRequest request = PlaceOrderRequest(
        amount: totalPrice.value + shippingFee.value,
        shippingFee: shippingFee.value,
        shippingAddressId: shippingAddress[selectedShippingAddress.value].id ?? 1,
        paymentTypeId: payments[selectedPaymentType.value].id ?? 1,
        orderItems: items.map((e) => OrderItem(productId: e.product?.id ?? 1, amount: e.amount ?? 1)).toList());
    await networkCall(
      placeOrderService.placeOrder(request),
      onSuccess: (data) {
        Get.offAllNamed(AppRoutes.orderSuccess);
      },
      onComplete: () {
        Get.back();
        loadStatus(LoadStatus.success);
      },
    );
  }
}
