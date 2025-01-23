import 'package:dio/dio.dart';
import 'package:dogs/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
part 'http_client_provider.g.dart';

@riverpod
Dio httpClient(HttpClientRef ref) {
  final options = BaseOptions(baseUrl: 'https://dog.ceo/api');
  final client = Dio(options);
  ref.onDispose(client.close);

  final logger = TalkerDioLogger(
    talker: talker,
  );
  client.interceptors.add(logger);

  return client;
}
