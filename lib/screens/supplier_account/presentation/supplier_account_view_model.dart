import 'package:get/get.dart';
import 'package:grocery_app/common/network/dio_provider.dart';
import 'package:grocery_app/screens/supplier_account/service/supplier_account_service.dart';

import '../../../common/base/base_controller.dart';
import '../../../common/constants.dart';
import '../../../common/local/shared_pref.dart';
import '../../../entity/account_info_entity.dart';

class SupplierAccountViewModel extends BaseViewModel {
  final SupplierAccountService supplierAccountService;
  final accountInfo = Rx<AccountInfoEntity?>(null);
  final isLogin = false.obs;
  final localStorage = Get.find<LocalStorage>();

  SupplierAccountViewModel(this.supplierAccountService);

  @override
  void onInit() async {
    super.onInit();
    await getAccountInfo();
  }

  Future<void> getAccountInfo() async {
    await networkCall(
      supplierAccountService.getAccountInfo(),
      onSuccess: (data) {
        accountInfo.value = data;
        isLogin(true);
      },
    );
  }

  Future<void> logout() async {
    await localStorage.remove(SharedPrefKey.accessToken);
    await localStorage.remove(SharedPrefKey.isSupplier);
    DioProvider.removeToken();
    accountInfo.value = null;
    isLogin(false);

  }
}