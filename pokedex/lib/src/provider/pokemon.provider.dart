import 'package:pokedex/api/models/pokemon.api.models.dart';
import 'package:pokedex/api/pokemon.api.dart';
import 'package:pokedex/src/models/pokemon.models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon.provider.g.dart';

@riverpod
Future<List<PokemonModels>> products(ProductsRef ref) async {
  final api = ref.watch(pokemonApiProvider);
  final models = await api.fetchAllPokemons();
  return models.pokemon ?? [];
}

@riverpod
Future<PokemonApiModels> pokemonDetail(
    PokemonDetailRef ref, int pokemonId) async {
  final api = ref.watch(pokemonApiProvider);
  final pokemon = await api.fetchPokemonDetails(pokemonId);
  return pokemon;
}
