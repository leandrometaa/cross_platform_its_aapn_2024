import 'package:go_router/go_router.dart';
import 'package:pokedex/src/pages/home.page.dart';
import 'package:pokedex/src/pages/pokemon.saved.dart';
import 'package:pokedex/src/pages/pokemon_detail.dart';
import 'package:pokedex/src/pages/save.pokemon.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    name: 'home',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: "/saved-pokemons",
    name: 'saved-pokemons',
    builder: (context, state) => const SavedPokemonsPage(),
  ),
  GoRoute(
    path: "/pokemon-detail/:id",
    builder: (context, state) {
      final pokemonId = int.parse(state.pathParameters['id']!);
      return PokemonDetailPage(pokemonId: pokemonId);
    },
  ),
  GoRoute(
    path: "/save-pokemon/:id",
    builder: (context, state) {
      final pokemonId = int.parse(state.pathParameters['id']!);
      return SavePokemonPage(pokemonId: pokemonId);
    },
  ),
]);
