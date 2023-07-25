import 'package:get/get.dart';

import '../../../common/base/base_controller.dart';
import '../../../entity/order_entity.dart';
import '../service/order_detail_service.dart';

class OrderDetailViewModel extends BaseViewModel {
  final OrderDetailService orderDetailService;
  final OrderEntity orderEntity = Get.arguments;

  OrderDetailViewModel(this.orderDetailService);

}