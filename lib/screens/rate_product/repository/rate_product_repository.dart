import '../../../entity/comment_entity.dart';

abstract class RateProductRepository {
  Future<CommentEntity> rateProduct({required int orderItemId, required int rate, required String content});

}