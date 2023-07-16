import '../../../entity/account_info_entity.dart';

abstract class AccountInfoService {
  Future<AccountInfoEntity> updateAccountInfo({required String email, required String phoneNumber, required String firstName, required String lastName, required String avatar});
  Future<AccountInfoEntity> changePassword({required String oldPassword, required String newPassword});
}