import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dogs/api/http_client_provider.dart';
import 'package:dogs/api/models/breeds_api_response_model.dart';
import 'package:dogs/api/models/dog_by_breed_response_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dogs_api.g.dart';

@riverpod
DogsApi dogsApi(Ref ref) {
  final client = ref.watch(httpClientProvider);
  return DogsApi(client);
}

class DogsApi {
  const DogsApi(this.client);
  final Dio client;

  Future<DogByBreedResponseModel> getDogsByBreed([
    String breed = 'shiba',
  ]) async {
    final response = await client.get('/breed/$breed/images');
    return DogByBreedResponseModel.fromJson(response.data);
  }

  Future<BreedsApiResponseModel> allBreeds() async {
    final response = await client.get('/breeds/list/all');
    return BreedsApiResponseModel.fromJson(response.data);
  }
}
