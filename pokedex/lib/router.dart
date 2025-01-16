import 'package:go_router/go_router.dart';
import 'package:pokedex/logger.dart';
import 'package:pokedex/src/pages/poke_details_page.dart';
import 'package:pokedex/src/pages/poke_list_page.dart';
import 'package:pokedex/src/pages/saved_poke_page.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  observers: [
    TalkerRouteObserver(talker),
  ],
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const PokeListPage(),
    ),
    GoRoute(
      path: "/saved",
      builder: (context, state) => const SavedPokePage(),
    ),
    GoRoute(
      path: "/:id",
      builder: (context, state) {
        final id = state.pathParameters["id"];
        final intId = int.parse(id!);
        return PokeDetailsPage(id: intId);
      },
    ),
  ],
);
