import 'package:rick_and_morty/src/models/filter_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filters_notifier.g.dart';

@riverpod
class FiltersNotifier extends _$FiltersNotifier {
  @override
  FilterModel build() {
    return FilterModel.empty();
  }

  void update(Map<String, Object?> formValue) {}
}
