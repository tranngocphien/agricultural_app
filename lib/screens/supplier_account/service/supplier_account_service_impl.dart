import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/screens/supplier_account/repository/supplier_account_repository.dart';
import 'package:grocery_app/screens/supplier_account/service/supplier_account_service.dart';

class SupplierAccountServiceImpl extends BaseService<SupplierAccountRepository> implements SupplierAccountService {
  SupplierAccountServiceImpl(super.repository);

}