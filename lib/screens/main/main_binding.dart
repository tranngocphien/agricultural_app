import 'package:get/get.dart';
import 'package:grocery_app/screens/main/main_view_model.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainViewModel());
  }

}