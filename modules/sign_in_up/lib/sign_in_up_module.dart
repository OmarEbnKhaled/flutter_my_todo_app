import 'package:core/network/network_info.dart';
import 'package:dependencies/dependencies.dart';

import 'data/data_sources/sign_in_data_source.dart';
import 'data/repositories/sign_in_repository_impl.dart';
import 'domain/repositories/sign_in_repository.dart';
import 'domain/use_cases/sign_in_email_password_use_case.dart';
import 'domain/use_cases/sign_in_google_use_case.dart';
import 'presentation/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'presentation/pages/sign_in_page.dart';
import 'presentation/pages/sign_up_page.dart';

class SignInUpModule extends Module {

  @override
  void binds(Injector i) {
    // Bloc
    i.addLazySingleton(() => SignInBloc(signInEmailPassword: i(), signInGoogle: i()));

    // Usecases
    i.addLazySingleton(
      () => SignInEmailPasswordUseCase(signInRepository: i<SignInRepository>()),
    );
    i.addLazySingleton(() => SignInGoogleUseCase(signInRepository: i<SignInRepository>()));

    // Repositories
    i.addLazySingleton<SignInRepository>(
      () => SignInRepositoryImpl(
        networkInfo: i<NetworkInfo>(),
        signInDataSource: i<SignInDataSource>(),
      ),
    );

    // Data Sources
    i.addLazySingleton<SignInDataSource>(() => SignInDataSourceImpl());

    // Core
    i.addLazySingleton<NetworkInfo>(() => NetworkInfoImpl(InternetConnectionChecker()));
  }

  @override
  void routes(RouteManager r) {
    r.child('/signIn', child: (context) => const SignInPage());
    r.child('/signUp', child: (context) => const SignUpPage());
  }
}
