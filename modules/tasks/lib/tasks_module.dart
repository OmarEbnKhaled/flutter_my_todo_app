import 'package:dependencies/dependencies.dart';

import 'presentation/page/tasks_page.dart';

class TasksModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const TasksPage());
  }
}
