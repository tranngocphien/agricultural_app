import '../../../entity/account_info_entity.dart';

abstract class SupplierAccountRepository {
  Future<AccountInfoEntity> getAccountInfo();

}