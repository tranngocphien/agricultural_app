import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/account_info_entity.dart';
import 'package:grocery_app/screens/account/repository/account_repository.dart';

class AccountRepositoryImpl extends BaseRepository implements AccountRepository {
  @override
  Future<AccountInfoEntity> getAccountInfo() {
    return getData("/api/account/info", (json) => AccountInfoEntity.fromJson(json), keyData: "data");
  }
  
}