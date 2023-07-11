import 'package:grocery_app/entity/auth_entity.dart';

abstract class SignInService {
  Future<AuthenticateEntity> signIn(String username, String password);
}