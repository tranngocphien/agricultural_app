import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/screens/product_details/repository/product_detail_repository.dart';

import 'product_detail_service.dart';

class ProductDetailServiceImpl extends BaseService<ProductDetailRepository> implements ProductDetailService{
  ProductDetailServiceImpl(super.repository);

}