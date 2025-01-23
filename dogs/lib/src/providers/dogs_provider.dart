import 'package:dogs/api/dogs_api.dart';
import 'package:dogs/src/models/dog.dart';
import 'package:dogs/src/notifiers/breed_filter_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dogs_provider.g.dart';

@riverpod
FutureOr<List<Dog>> dogs(DogsRef ref) async {
  final api = ref.watch(dogsApiProvider);
  final racist = ref.watch(breedFilterNotifierProvider);
  final result = await api.getDogsByBreed(racist);
  return result.message;
}
