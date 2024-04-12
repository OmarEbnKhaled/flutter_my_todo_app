import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

import '../../domain/repositories/sign_up_repository.dart';
import '../data_sources/sign_up_data_source.dart';
import '../model/user_model.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpDataSource signUpDataSource;
  final NetworkInfo networkInfo;

  SignUpRepositoryImpl({
    required this.signUpDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Unit>> signUpEmailPassword(UserModel userModel) async {
    try {
      await signUpDataSource.signUpWithEmailPassword(userModel);
      return const Right(unit);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> signUpGoogle() async {
    try {
      await signUpDataSource.signInGoogle();
      return const Right(unit);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
