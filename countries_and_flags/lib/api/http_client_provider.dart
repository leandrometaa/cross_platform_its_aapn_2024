import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_client_provider.g.dart';

@riverpod
Dio Httpclient(HttpclientRef ref) {
  final options = BaseOptions(baseUrl: "https://restcountries.com");
  final client = Dio(options);
  ref.onDispose(client.close);

  return client;
}
