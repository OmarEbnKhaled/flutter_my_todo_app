import 'package:core/failure/failure.dart';
import 'package:dependencies/dependencies.dart';

abstract class SignInRepository {
  Future<Either<Failure, Unit>> signInEmailPassword(String email, String password);

  Future<Either<Failure, Unit>> signInGoogle();
}