
import '../../../common/base/base_service.dart';
import '../../../entity/comment_entity.dart';
import '../repository/rate_product_repository.dart';
import 'rate_product_service.dart';

class RateProductServiceImpl extends BaseService<RateProductRepository> implements RateProductService {
  RateProductServiceImpl(super.repository);

  @override
  Future<CommentEntity> rateProduct({required int orderItemId, required int rate, required String content}) {
    return repository.rateProduct(orderItemId: orderItemId, rate: rate, content: content);
  }

}