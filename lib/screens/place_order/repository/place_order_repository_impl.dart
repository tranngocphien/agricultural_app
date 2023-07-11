import 'package:grocery_app/entity/order_entity.dart';
import 'package:grocery_app/entity/payment_type.dart';
import 'package:grocery_app/entity/shipping_address_entity.dart';
import 'package:grocery_app/screens/place_order/models/place_order_request.dart';
import 'package:grocery_app/screens/place_order/repository/place_order_repository.dart';

import '../../../common/base/base_repository.dart';

class PlaceOrderRepositoryImpl extends BaseRepository implements PlaceOrderRepository {
  @override
  Future<List<PaymentTypeEntity>> getPaymentTypes() {
    return getListData("/api/payment-types", (json) => PaymentTypeEntity.fromJson(json), keyData: "data");
  }

  @override
  Future<List<ShippingAddressEntity>> getShippingAddress() {
    return getListData("/api/account/shipping-address", (json) => ShippingAddressEntity.fromJson(json), keyData: "data");
  }

  @override
  Future<OrderEntity> placeOrder(PlaceOrderRequest request) {
    return postData("/api/orders/create", (json) => OrderEntity.fromJson(json), keyData: "data", data: request.toJson());
  }


}