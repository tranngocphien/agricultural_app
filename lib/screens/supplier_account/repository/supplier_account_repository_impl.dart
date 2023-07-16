import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/account_info_entity.dart';
import 'package:grocery_app/screens/supplier_account/repository/supplier_account_repository.dart';

class SupplierAccountRepositoryImpl extends BaseRepository implements SupplierAccountRepository {

  @override
  Future<AccountInfoEntity> getAccountInfo() {
    return getData("/api/account/info", (json) => AccountInfoEntity.fromJson(json), keyData: "data");
  }

}