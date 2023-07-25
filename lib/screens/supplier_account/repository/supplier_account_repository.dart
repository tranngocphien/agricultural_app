import '../../../entity/account_info_entity.dart';
import '../../../entity/supplier_entity.dart';

abstract class SupplierAccountRepository {
  Future<AccountInfoEntity> getAccountInfo();

  Future<SupplierEntity> getSupplierInfo();

  Future<SupplierEntity> updateSupplierInfo({
    required int id,
    required String name,
    required String location,
    required String description,
    required String brandImage,
  });

  Future<SupplierEntity> createSupplierInfo({
    required String name,
    required String location,
    required String description,
    required String brandImage,
  });
}
