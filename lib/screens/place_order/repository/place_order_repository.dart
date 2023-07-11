import 'package:grocery_app/entity/payment_type.dart';
import 'package:grocery_app/entity/shipping_address_entity.dart';
import 'package:grocery_app/screens/place_order/models/place_order_request.dart';

import '../../../entity/order_entity.dart';

abstract class PlaceOrderRepository {
  Future<List<PaymentTypeEntity>> getPaymentTypes();
  Future<List<ShippingAddressEntity>> getShippingAddress();
  Future<OrderEntity> placeOrder(PlaceOrderRequest request);
}