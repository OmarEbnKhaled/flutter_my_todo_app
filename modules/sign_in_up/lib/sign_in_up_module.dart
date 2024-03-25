import 'package:dependencies/dependencies.dart';

import 'presentation/pages/sign_in_page.dart';
import 'presentation/pages/sign_up_page.dart';

class SignInUpModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/signIn', child: (context) => const SignInPage());
    r.child('/signUp', child: (context) => const SignUpPage());
  }
}
