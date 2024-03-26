import 'package:dependencies/dependencies.dart';

import 'presentation/page/lists_page.dart';

class ListsModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const ListsPage());
  }
}
