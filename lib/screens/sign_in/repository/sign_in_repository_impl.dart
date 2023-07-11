import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/entity/auth_entity.dart';
import 'sign_in_repository.dart';

class SignInRepositoryImpl extends BaseRepository implements SignInRepository {
  SignInRepositoryImpl() : super();

  @override
  Future<AuthenticateEntity> signIn(String username, String password) {
    return postData(
        "/api/auth/login", (json) => AuthenticateEntity.fromJson(json),
        data: {"username": username, "password": password},
      keyData: "data"
    );
  }
}
