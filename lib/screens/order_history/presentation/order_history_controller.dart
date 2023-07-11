import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_controller.dart';
import 'package:grocery_app/screens/order_history/service/order_history_service.dart';

import '../../../entity/order_entity.dart';

class OrderHistoryController extends BaseController {
  final OrderHistoryService orderHistoryService;

  OrderHistoryController(this.orderHistoryService);

  final _listOrder = <OrderEntity>[].obs;
  final processOrder = <OrderEntity>[].obs;
  final confirmOrder = <OrderEntity>[].obs;
  final completeOrder = <OrderEntity>[].obs;
  final cancelOrder = <OrderEntity>[].obs;

  @override
  void onInit() async {
    super.onInit();
    loadStatus(LoadStatus.loading);
    await getListOrder();
    loadStatus(LoadStatus.success);
  }

  Future<void> getListOrder() async {
    await networkCall(
      orderHistoryService.getHistoryOrder(),
      onSuccess: (response) {
        _listOrder.clear();
        _listOrder.assignAll(response);
        splitOrder();

      },
    );
  }

  void splitOrder() {
    for (var i = 0; i < _listOrder.length; i++) {
      if (_listOrder[i].status == 'IDLE') {
        processOrder.add(_listOrder[i]);
      } else if (_listOrder[i].status == 'CONFIRMED') {
        confirmOrder.add(_listOrder[i]);
      } else if (_listOrder[i].status == 'DELIVERED') {
        completeOrder.add(_listOrder[i]);
      } else if (_listOrder[i].status == 'CANCELLED') {
        cancelOrder.add(_listOrder[i]);
      }
    }
  }

  Future<void> cancelProcessingOrder({required int id}) async {
    loadStatus(LoadStatus.loading);
    await networkCall(
        orderHistoryService.cancelOrder(id: id),
        onSuccess: (response) async  {
          Get.snackbar('Cancel Order', 'Cancel Order Success');
          await getListOrder();
        }
    );
    loadStatus(LoadStatus.success);
  }




}