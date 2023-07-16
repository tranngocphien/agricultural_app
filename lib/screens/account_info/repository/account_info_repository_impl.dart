import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/account_info_entity.dart';
import 'account_info_repository.dart';

class AccountInfoRepositoryImpl extends BaseRepository
    implements AccountInfoRepository {
  @override
  Future<AccountInfoEntity> updateAccountInfo(
      {required String email,
      required String phoneNumber,
      required String firstName,
      required String lastName,
        required String avatar
      }) {
    return postData(
      "/api/account/update-info",
      (json) => AccountInfoEntity.fromJson(json),
      data: {
        "email": email,
        "phoneNumber": phoneNumber,
        "firstName": firstName,
        "lastName": lastName,
        "avatar": avatar
      },
      keyData: "data",
    );
  }

  @override
  Future<AccountInfoEntity> changePassword({required String oldPassword, required String newPassword}) {
    return postData(
      "/api/account/change-password",
          (json) => AccountInfoEntity.fromJson(json),
      data: {
        "oldPassword": oldPassword,
        "newPassword": newPassword,
      },
      keyData: "data",
    );
  }
}
