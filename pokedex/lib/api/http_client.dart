import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'http_client.g.dart';

@riverpod
Dio httpClient(HttpClientRef ref) {
  ref.keepAlive();
  final client = Dio(
    BaseOptions(baseUrl: "https://pokeapi.co/api/v2/pokemon?limit=10000"),
  );
  ref.onDispose(client.close);
  return client;
}
