import 'package:core/failure/failure.dart';
import 'package:dependencies/dependencies.dart';

import '../../repositories/sign_in_repository.dart';

class SignInGoogleUseCase {
  final SignInRepository signInRepository;

  SignInGoogleUseCase({required this.signInRepository});

  Future<Either<Failure, Unit>> call() async {
    return await signInRepository.signInGoogle();
  }
}
