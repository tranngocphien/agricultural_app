import '../../../entity/account_info_entity.dart';

abstract class SupplierAccountService {
  Future<AccountInfoEntity> getAccountInfo();
}