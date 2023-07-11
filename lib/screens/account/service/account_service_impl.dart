import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/screens/account/repository/account_repository.dart';

import '../../../entity/account_info_entity.dart';
import 'account_service.dart';

class AccountServiceImpl extends BaseService<AccountRepository> implements AccountService {
  AccountServiceImpl(AccountRepository repository) : super(repository);

  @override
  Future<AccountInfoEntity> getAccountInfo() {
    return repository.getAccountInfo();
  }

}