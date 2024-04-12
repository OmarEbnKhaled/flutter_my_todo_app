import 'package:core/failure/failure.dart';
import 'package:dependencies/dependencies.dart';

import '../../../data/model/user_model.dart';
import '../../repositories/sign_up_repository.dart';

class SignUpEmailPasswordUseCase {
  final SignUpRepository signInRepository;

  SignUpEmailPasswordUseCase({required this.signInRepository});

  Future<Either<Failure, Unit>> call(UserModel userModel) async {
    return await signInRepository.signUpEmailPassword(userModel);
  }
}
