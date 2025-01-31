import 'package:countries_and_flags/api/flags_api.dart';
import 'package:countries_and_flags/api/models/flags_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flags_provider.g.dart';

@riverpod
class FlagsNotifier extends _$FlagsNotifier {
  @override
  Future<List<FlagsResponse>> build() async {
    final api = ref.watch(flagsApiProvider);
    return api.list();
  }
}
