import 'package:core/failure/failure.dart';
import 'package:dependencies/dependencies.dart';

import '../../data/model/user_model.dart';

abstract class SignUpRepository {
  Future<Either<Failure, Unit>> signUpEmailPassword(UserModel userModel);

  Future<Either<Failure, Unit>> signUpGoogle();
}