abstract class SignUpService {
  Future<String> signUp({required String username, required String password, required String email, String? firstName, String? lastName});
}