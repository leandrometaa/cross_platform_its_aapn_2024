import 'package:reactive_forms/reactive_forms.dart';
import 'package:rick_and_morty/src/models/filter_model.dart';
import 'package:rick_and_morty/src/providers/filters_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'filter_form_provider.g.dart';

@riverpod
FormGroup filterForm(FilterFormRef ref) {
  final FilterModel(:gender, :status) = ref.watch(filtersNotifierProvider);
  final form = FormGroup({
    "gender": FormControl<String>(value: gender?.name),
    "status": FormControl<String>(value: status?.name),
  });

  return form;
}
