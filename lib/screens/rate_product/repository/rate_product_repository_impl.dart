import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/comment_entity.dart';
import 'package:grocery_app/screens/rate_product/repository/rate_product_repository.dart';

class RateProductRepositoryImpl extends BaseRepository
    implements RateProductRepository {
  @override
  Future<CommentEntity> rateProduct(
      {required int orderItemId, required int rate, required String content}) {
    return postData('/api/orders/rate', (json) => CommentEntity.fromJson(json),
        data: {'orderItemId': orderItemId, 'rate': rate, 'content': content},
        keyData: 'data');
  }
}
