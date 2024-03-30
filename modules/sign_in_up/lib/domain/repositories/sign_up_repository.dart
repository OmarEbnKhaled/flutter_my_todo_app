import 'package:core/failure/failure.dart';
import 'package:dependencies/dependencies.dart';

abstract class SignUpRepository {
  Future<Either<Failure, Unit>> signUpEmailPassword(String email, String password);

  Future<Either<Failure, Unit>> signUpGoogle(String email, String password);
}