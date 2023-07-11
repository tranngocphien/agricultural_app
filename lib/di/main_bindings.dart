import 'package:get/get.dart';

import '../common/local/shared_pref.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<LocalStorage>(LocalStorageImpl());
  }
}