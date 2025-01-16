import 'package:dio/dio.dart';
import 'package:rick_and_morty/api/http_client_provider.dart';
import 'package:rick_and_morty/api/models/characters_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'rick_and_morty_api.g.dart';

@riverpod
RickAndMortyApi rickAndMortyApi(RickAndMortyApiRef ref) {
  final client = ref.watch(httpClientProvider);
  return RickAndMortyApi(client);
}

class RickAndMortyApi {
  const RickAndMortyApi(this.client);
  final Dio client;

  Future<CharactersResponseModel> list(
    Map<String, dynamic>? queryParameters,
  ) async {
    final response = await client.get(
      '/character',
      queryParameters: queryParameters,
    );
    return CharactersResponseModel.fromJson(response.data);
  }
}
