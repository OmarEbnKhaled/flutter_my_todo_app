import 'package:core/failure/failure.dart';
import 'package:dependencies/dependencies.dart';

import '../../repositories/sign_up_repository.dart';

class SignUpGoogleUseCase {
  final SignUpRepository signUpRepository;

  SignUpGoogleUseCase({required this.signUpRepository});

  Future<Either<Failure, Unit>> call() async {
    return await signUpRepository.signUpGoogle();
  }
}
