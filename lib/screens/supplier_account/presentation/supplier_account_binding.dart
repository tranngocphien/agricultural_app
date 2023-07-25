import 'package:get/get.dart';
import 'package:grocery_app/screens/supplier_account/presentation/supplier_account_view_model.dart';
import 'package:grocery_app/screens/supplier_account/repository/supplier_account_repository.dart';
import 'package:grocery_app/screens/supplier_account/service/supplier_account_service.dart';

import '../repository/supplier_account_repository_impl.dart';
import '../service/supplier_account_service_impl.dart';

class SupplierAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupplierAccountRepository>(() => SupplierAccountRepositoryImpl());
    Get.lazyPut<SupplierAccountService>(() => SupplierAccountServiceImpl(Get.find()));
    Get.lazyPut<SupplierAccountViewModel>(() => SupplierAccountViewModel(Get.find()));
  }

}