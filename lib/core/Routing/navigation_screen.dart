import 'package:go_router/go_router.dart';
import 'package:todo_app/core/Routing/route_path.dart';
import 'package:todo_app/Screens/add_task.dart';
import 'package:todo_app/Screens/task_screen.dart';



class NavigationScreen {
  NavigationScreen._();

  static final route = GoRouter(
    initialLocation: RoutePath.task,
    routes: [
      GoRoute(path: RoutePath.task, builder: (context, state) => TaskScreen()),
      GoRoute(path: RoutePath.addTask, builder: (context, state) => AddTask()),

    ],);
}