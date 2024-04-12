import 'package:core/failure/exception.dart';
import 'package:core/failure/failure.dart';
import 'package:core/network/network_info.dart';
import 'package:dependencies/dependencies.dart';

import '../../domain/repositories/sign_in_repository.dart';
import '../data_sources/sign_in_data_source.dart';

class SignInRepositoryImpl implements SignInRepository {
  final SignInDataSource signInDataSource;
  final NetworkInfo networkInfo;

  SignInRepositoryImpl({
    required this.signInDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Unit>> signInEmailPassword(
    String email,
    String password,
  ) async {
    try {
      await signInDataSource.signInEmailPassword(email, password);
      return const Right(unit);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> signInGoogle() async {
    try {
      await signInDataSource.signInGoogle();
      return const Right(unit);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
