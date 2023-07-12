import 'package:grocery_app/screens/order_detail/repository/order_detail_repository.dart';

import '../../../common/base/base_service.dart';
import 'order_detail_service.dart';

class OrderDetailServiceImpl extends BaseService<OrderDetailRepository> implements OrderDetailService {
  OrderDetailServiceImpl(super.repository);

}