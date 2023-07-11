import 'package:grocery_app/entity/order_entity.dart';
import 'package:grocery_app/entity/payment_type.dart';
import 'package:grocery_app/entity/shipping_address_entity.dart';
import 'package:grocery_app/screens/place_order/models/place_order_request.dart';
import 'package:grocery_app/screens/place_order/repository/place_order_repository.dart';

import '../../../common/base/base_service.dart';
import 'place_order_service.dart';

class PlaceOrderServiceImpl extends BaseService<PlaceOrderRepository> implements PlaceOrderService {

  PlaceOrderServiceImpl(PlaceOrderRepository repository) : super(repository);

  @override
  Future<List<PaymentTypeEntity>> getPaymentTypes() {
    return repository.getPaymentTypes();
  }

  @override
  Future<List<ShippingAddressEntity>> getShippingAddress() {
    return repository.getShippingAddress();
  }

  @override
  Future<OrderEntity> placeOrder(PlaceOrderRequest request) {
    return repository.placeOrder(request);
  }

}