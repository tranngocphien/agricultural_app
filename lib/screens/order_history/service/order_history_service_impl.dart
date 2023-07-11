import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/entity/order_entity.dart';
import 'package:grocery_app/screens/order_history/repository/order_history_repository.dart';
import 'order_history_service.dart';

class OrderHistoryServiceImpl extends BaseService<OrderHistoryRepository> implements OrderHistoryService {
  OrderHistoryServiceImpl(OrderHistoryRepository repository) : super(repository);

  @override
  Future<List<OrderEntity>> getHistoryOrder() {
    return repository.getHistoryOrder();
  }

  @override
  Future<OrderEntity> cancelOrder({required int id}) {
    return repository.cancelOrder(id: id);
  }

}