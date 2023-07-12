import 'package:get/get.dart';
import 'package:grocery_app/common/base/base_controller.dart';

class MainSupplierController extends BaseController {
  var _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;
}