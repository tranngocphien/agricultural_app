import 'package:grocery_app/entity/account_info_entity.dart';
import 'package:grocery_app/screens/account_info/repository/account_info_repository.dart';

import '../../../common/base/base_service.dart';
import 'account_info_service.dart';

class AccountInfoServiceImpl extends BaseService<AccountInfoRepository> implements AccountInfoService {
  AccountInfoServiceImpl(super.repository);

  @override
  Future<AccountInfoEntity> updateAccountInfo({required String email, required String phoneNumber, required String firstName, required String lastName, required String avatar}) {
    return repository.updateAccountInfo(email: email, phoneNumber: phoneNumber, firstName: firstName, lastName: lastName, avatar: avatar);
  }

  @override
  Future<AccountInfoEntity> changePassword({required String oldPassword, required String newPassword}) {
    return repository.changePassword(oldPassword: oldPassword, newPassword: newPassword);

  }

}