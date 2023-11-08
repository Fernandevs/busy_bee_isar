import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:busy_bee/features/todo/presentation/presentation.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 8,
          title: const Text('Busy Bee'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.pending_outlined)),
              Tab(icon: Icon(Icons.done_all_outlined)),
              Tab(icon: Icon(Icons.list_outlined)),
            ],
          ),
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            PendingTodosView(),
            DoneTodosView(),
            AllTodosView(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.goNamed(CreateTodoScreen.name),
          child: const Icon(Icons.add_outlined),
        ),
      ),
    );
  }
}
