import 'package:grocery_app/common/base/base_service.dart';

import '../../../entity/category_entity.dart';
import '../../../entity/product_entity.dart';
import '../repository/explore_repository.dart';
import 'explore_service.dart';

class ExploreServiceImpl extends BaseService<ExploreRepository>
    implements ExploreService {
  ExploreServiceImpl(super.repository);

  @override
  Future<List<CategoryEntity>> getCategory() {
    return repository.getCategory();
  }

  @override
  Future<List<ProductEntity>> searchProducts({int page = 0, int limit = 10, keyword = ""}) {
    return repository.searchProducts(page: page, limit: limit, keyword: keyword);
  }
}
