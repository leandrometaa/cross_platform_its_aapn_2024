import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/logger.dart';
import 'package:rick_and_morty/src/pages/filter_page.dart';
import 'package:rick_and_morty/src/pages/home_page.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  observers: [
    TalkerRouteObserver(talker),
  ],
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/filters',
      name: 'filters',
      builder: (context, state) => FilterPage(),
    )
  ],
);
