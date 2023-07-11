import '../../../entity/account_info_entity.dart';

abstract class AccountRepository {
  Future<AccountInfoEntity> getAccountInfo();
}