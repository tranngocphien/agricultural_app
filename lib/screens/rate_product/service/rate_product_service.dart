
import '../../../entity/comment_entity.dart';

abstract class RateProductService {
  Future<CommentEntity> rateProduct({required int orderItemId, required int rate, required String content});
}