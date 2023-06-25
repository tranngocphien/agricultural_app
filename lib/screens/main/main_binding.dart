import 'package:get/get.dart';
import 'package:grocery_app/screens/main/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
  }

}