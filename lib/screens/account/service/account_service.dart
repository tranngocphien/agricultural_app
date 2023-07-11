import '../../../entity/account_info_entity.dart';

abstract class AccountService {
  Future<AccountInfoEntity> getAccountInfo();
}