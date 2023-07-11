import 'package:grocery_app/common/base/base_service.dart';
import 'package:grocery_app/entity/auth_entity.dart';
import 'package:grocery_app/screens/sign_in/repository/sign_in_repository.dart';
import 'package:grocery_app/screens/sign_in/service/sign_in_service.dart';

class SignInServiceImpl extends BaseService<SignInRepository> implements SignInService {
  SignInServiceImpl(super.repository);

  @override
  Future<AuthenticateEntity> signIn(String username, String password) {
    return repository.signIn(username, password);
  }

}