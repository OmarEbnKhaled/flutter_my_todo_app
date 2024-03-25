import 'package:dependencies/dependencies.dart';

import 'presentation/pages/sign_in_page.dart';

class SignInUpModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const SignInPage());
  }
}
