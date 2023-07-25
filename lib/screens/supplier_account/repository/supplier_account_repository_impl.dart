import 'dart:convert';

import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/account_info_entity.dart';
import 'package:grocery_app/entity/supplier_entity.dart';
import 'package:grocery_app/screens/supplier_account/repository/supplier_account_repository.dart';

class SupplierAccountRepositoryImpl extends BaseRepository implements SupplierAccountRepository {

  @override
  Future<AccountInfoEntity> getAccountInfo() {
    return getData("/api/account/info", (json) => AccountInfoEntity.fromJson(json), keyData: "data");
  }

  @override
  Future<SupplierEntity> getSupplierInfo() {
    return getData("/api/suppliers/info", (json) => SupplierEntity.fromJson(json), keyData: "data");
  }

  @override
  Future<SupplierEntity> updateSupplierInfo({required int id, required String name, required String location, required String description, required String brandImage}) {
    return postData("/api/suppliers/update", (json) => SupplierEntity.fromJson(json), keyData: "data", data: {
      "id": id,
      "name": name,
      "location": location,
      "description": description,
      "brandImage": brandImage,
    });
  }

  @override
  Future<SupplierEntity> createSupplierInfo({ required String name, required String location, required String description, required String brandImage}) {
    return postData("/api/suppliers/register", (json) => SupplierEntity.fromJson(json), keyData: "data", data: {
      "name": name,
      "location": location,
      "description": description,
      "brandImage": brandImage,
    });
  }

}