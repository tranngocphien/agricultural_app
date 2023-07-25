import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/entity/account_info_entity.dart';
import 'package:grocery_app/entity/supplier_entity.dart';
import 'package:grocery_app/screens/supplier_account/repository/supplier_account_repository.dart';
import 'package:grocery_app/screens/supplier_account/service/supplier_account_service.dart';

class SupplierAccountServiceImpl extends BaseService<SupplierAccountRepository> implements SupplierAccountService {
  SupplierAccountServiceImpl(super.repository);

  @override
  Future<AccountInfoEntity> getAccountInfo() {
    return repository.getAccountInfo();
  }

  @override
  Future<SupplierEntity> getSupplierInfo() {
    return repository.getSupplierInfo();
  }

  @override
  Future<SupplierEntity> updateSupplierInfo({required int id, required String name, required String location, required String description, required String brandImage}) {
    return repository.updateSupplierInfo(
      id: id,
      name: name,
      location: location,
      description: description,
      brandImage: brandImage,
    );
  }

  @override
  Future<SupplierEntity> createSupplierInfo({required String name, required String location, required String description, required String brandImage}) {
    return repository.createSupplierInfo(
      name: name,
      location: location,
      description: description,
      brandImage: brandImage,
    );
  }

}