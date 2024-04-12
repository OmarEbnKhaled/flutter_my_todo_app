import 'package:core/failure/failure.dart';
import 'package:dependencies/dependencies.dart';

import '../../repositories/sign_in_repository.dart';

class SignInEmailPasswordUseCase {
  final SignInRepository signInRepository;

  SignInEmailPasswordUseCase({required this.signInRepository});

  Future<Either<Failure, Unit>> call(String email, String password) async {
    return await signInRepository.signInEmailPassword(email, password);
  }
}
