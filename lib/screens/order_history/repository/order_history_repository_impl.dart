import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/order_entity.dart';
import 'package:grocery_app/screens/order_history/repository/order_history_repository.dart';

class OrderHistoryRepositoryImpl extends BaseRepository implements OrderHistoryRepository {
  @override
  Future<List<OrderEntity>> getHistoryOrder() {
    return getListData("api/orders", (json) => OrderEntity.fromJson(json), keyData: "data");
  }

  @override
  Future<OrderEntity> cancelOrder({required int id}) {
    return postData("api/orders/cancel/$id", (json) => OrderEntity.fromJson(json) );
  }

}