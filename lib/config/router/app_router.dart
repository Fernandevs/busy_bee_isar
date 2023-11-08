import 'package:busy_bee/features/todo/presentation/presentation.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'todo:id',
          name: TodoScreen.name,
          builder: (context, state) {
            final id = state.pathParameters.containsKey('id')
                ? int.parse(state.pathParameters['id']!)
                : 0;

            return TodoScreen(id: id);
          },
        ),
        GoRoute(
          path: 'create_todo',
          name: CreateTodoScreen.name,
          builder: (context, state) => const CreateTodoScreen(),
        ),
        /*
        GoRoute(
          path: 'update_todo:id',
          name: UpdateTodoScreen.name,
          builder: (context, state) {
            final id = state.pathParameters.containsKey('id')
                ? int.parse(state.pathParameters['id']!)
                : 0;

            return UpdateTodoScreen(id: id);
          },
        ),*/
      ],
    ),
  ],
);
