import 'package:grocery_app/entity/auth_entity.dart';

abstract class SignInRepository {
  Future<AuthenticateEntity> signIn(String username, String password);
}