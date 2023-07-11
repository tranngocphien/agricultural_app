import '../../../entity/order_entity.dart';

abstract class OrderHistoryService {
  Future<List<OrderEntity>> getHistoryOrder();
  Future<OrderEntity> cancelOrder({required int id});

}