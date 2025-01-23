import 'package:dogs/api/dogs_api.dart';
import 'package:dogs/src/models/dog.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dogs_provider.g.dart';

@riverpod
FutureOr<List<Dog>> dogs(DogsRef ref) async {
  final api = ref.watch(dogsApiProvider);
  final result = await api.getDogsByBreed();
  return result.message;
}
