import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_controller.dart';
import 'package:grocery_app/entity/product_entity.dart';
import 'package:grocery_app/screens/product_details/service/product_detail_service.dart';

class ProductDetailController extends BaseController {
  final ProductDetailService productDetailService;
  ProductDetailController(this.productDetailService);

  final ProductEntity productEntity = Get.arguments;


  @override
  void onInit() {
    super.onInit();
  }
}