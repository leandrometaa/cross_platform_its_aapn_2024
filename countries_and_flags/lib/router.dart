import 'package:countries_and_flags/src/pages/favorites_page.dart';
import 'package:countries_and_flags/src/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/favorites',
      name: 'favorites',
      builder: (context, state) => FavoritesPage(),
    )
  ],
);
