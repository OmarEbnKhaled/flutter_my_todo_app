import 'package:dependencies/dependencies.dart';
import 'package:lists/lists_module.dart';
import 'package:sign_in_up/sign_in_up_module.dart';
import 'package:tasks/tasks_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module('/', module: SignInUpModule());
    r.module('/lists', module: ListsModule());
    r.module('/tasks', module: TasksModule());
  }
}
