import 'package:grocery_app/entity/order_entity.dart';

abstract class OrderHistoryRepository {
  Future<List<OrderEntity>> getHistoryOrder();
  Future<OrderEntity> cancelOrder({required int id});

}