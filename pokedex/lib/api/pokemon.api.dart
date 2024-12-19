import 'package:dio/dio.dart';
import 'package:pokedex/api/http_client.dart';
import 'package:pokedex/api/models/pokemon_response.model.dart';
import 'package:pokedex/api/models/pokemon.api.models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon.api.g.dart';

@riverpod
PokemonApi pokemonApi(PokemonApiRef ref) {
  final client = ref.watch(httpClientProvider);
  final api = PokemonApi(client);
  return api;
}

class PokemonApi {
  const PokemonApi(this.client);
  final Dio client;

  Future<PokemonResponseModel> fetchAllPokemons() async {
    final response =
        await client.get<Map<String, Object?>>("/v2/pokemon?limit=10000");
    final model = PokemonResponseModel.fromJson(response.data!);
    return model;
  }

  Future<PokemonApiModels> fetchPokemonDetails(int id) async {
    final response = await client.get<Map<String, dynamic>>("/v2/pokemon/$id");
    final data = response.data!;

    return PokemonApiModels(
      id: data['id'],
      name: data['name'],
      imageUrl: data['sprites']['front_default'],
      height: data['height'],
      weight: data['weight'],
    );
  }
}
