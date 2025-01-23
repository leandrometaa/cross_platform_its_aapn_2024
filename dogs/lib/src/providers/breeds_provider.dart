import 'package:dogs/api/dogs_api.dart';
import 'package:dogs/src/models/breed.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'breeds_provider.g.dart';

@riverpod
Future<List<Breed>> breeds(BreedsRef ref) async {
  final api = ref.watch(dogsApiProvider);
  final results = await api.allBreeds();
  return results.breeds;
}
