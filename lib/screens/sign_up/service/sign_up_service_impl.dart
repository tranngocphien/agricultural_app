import 'package:grocery_app/screens/sign_up/repository/sign_up_repository.dart';
import 'package:grocery_app/screens/sign_up/service/sign_up_service.dart';

import '../../../common/base/base_service.dart';

class SignUpServiceImpl extends BaseService<SignUpRepository> implements SignUpService {
  SignUpServiceImpl(super.repository);

  @override
  Future<String> signUp({required String username, required String password, required String email, String? firstName, String? lastName}) {
    return repository.signUp(username: username, password: password, email: email, firstName: firstName, lastName: lastName);
  }

}