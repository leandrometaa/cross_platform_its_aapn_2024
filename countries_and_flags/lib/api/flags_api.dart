import 'package:countries_and_flags/api/http_client_provider.dart';
import 'package:countries_and_flags/api/models/flags_response.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flags_api.g.dart';

@riverpod
FlagsApi flagsApi(FlagsApiRef ref) {
  final client = ref.watch(httpclientProvider);
  return FlagsApi(client);
}

class FlagsApi {
  const FlagsApi(this.client);
  final Dio client;

  Future<List<FlagsResponse>> list() async {
    final response = await client.get('/v3.1/all');

    if (response.data is List) {
      return (response.data as List)
          .map((json) => FlagsResponse.fromJson(json))
          .toList();
    } else {
      throw Exception('Invalid API response');
    }
  }
}
