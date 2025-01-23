import 'package:dogs/src/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:dogs/logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  observers: [
    TalkerRouteObserver(talker),
  ],
  routes: [
    GoRoute(
      path: "/",
      name: "home",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/filters",
      name: "filters",
      builder: (context, state) => throw UnimplementedError(),
    )
  ],
);
