import 'package:get/get.dart';
import 'package:grocery_app/screens/account/repository/account_repository.dart';
import 'package:grocery_app/screens/account/service/account_service.dart';
import 'package:grocery_app/screens/account/service/account_service_impl.dart';
import '../repository/account_repository_impl.dart';
import 'account_view_model.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountRepository>(() => AccountRepositoryImpl());
    Get.lazyPut<AccountService>(() => AccountServiceImpl(Get.find()));
    Get.lazyPut<AccountViewModel>(() => AccountViewModel(Get.find()));
  }
}