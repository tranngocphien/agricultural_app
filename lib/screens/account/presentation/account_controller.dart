import 'package:grocery_app/common/local/shared_pref.dart';
import 'package:grocery_app/screens/account/service/account_service.dart';
import 'package:get/get.dart';
import '../../../common/base/base_controller.dart';
import '../../../common/constants.dart';
import '../../../entity/account_info_entity.dart';

class AccountController extends BaseController {
  final AccountService _accountService;
  final accountInfo = Rx<AccountInfoEntity?>(null);
  final isLogin = false.obs;
  final localStorage = Get.find<LocalStorage>();

  AccountController(this._accountService);

  @override
  void onInit() async {
    super.onInit();
    await getAccountInfo();
  }

  Future<void> getAccountInfo() async {
    await networkCall(
      _accountService.getAccountInfo(),
      onSuccess: (data) {
        accountInfo.value = data;
        isLogin(true);
      },
    );
  }

  Future<void> logout() async {
    await localStorage.remove(SharedPrefKey.accessToken);
    accountInfo.value = null;
    isLogin(false);

  }

}