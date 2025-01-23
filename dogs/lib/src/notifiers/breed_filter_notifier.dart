import 'package:dogs/src/models/breed.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'breed_filter_notifier.g.dart';

@riverpod
class BreedFilterNotifier extends _$BreedFilterNotifier {
  @override
  Breed build() {
    return 'shiba';
  }

  void update(Breed breed) {
    state = breed;
  }
}
