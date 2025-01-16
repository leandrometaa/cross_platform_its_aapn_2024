import 'package:dio/dio.dart';
import 'package:pokedex/api/models/poke_list_api_model.dart';

class PokeApi {
  const PokeApi(this.client);
  final Dio client;

  Future<PokeListApiModel> fetchPokemons() async {
    final result = await client.get(
      'https://pokeapi.co/api/v2/pokemon?limit=10000',
    );
    return PokeListApiModel.fromJson(result.data);
  }
}
