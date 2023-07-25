import 'package:grocery_app/common/base/base_repository.dart';
import 'package:grocery_app/screens/sign_up/repository/sign_up_repository.dart';

class SignUpRepositoryImpl extends BaseRepository implements SignUpRepository {
  @override
  Future<String> signUp({required String username, required String password, required String email, String? firstName, String? lastName}) {
    return postData("/api/auth/register", (json) => json["data"], data: {
      "username": username,
      "password": password,
      "email": email,
      "firstName": firstName,
      "lastName": lastName
    });
  }

}