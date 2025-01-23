import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/api/rick_and_morty_api.dart';
import 'package:rick_and_morty/src/models/character_model.dart';
import 'package:rick_and_morty/src/models/filter_model.dart';
import 'package:rick_and_morty/src/providers/filters_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_provider.g.dart';

@riverpod
FutureOr<List<CharacterModel>> search(Ref ref, String? query) async {
  final api = ref.watch(rickAndMortyApiProvider);
  final FilterModel(:gender, :status) = ref.watch(filtersNotifierProvider);

  final queryParams = {
    if (query != null) 'name': query,
    if (gender != null) 'gender': gender.name,
    if (status != null) 'status': status.name,
  };
  final result = await api.list(queryParams);
  return result.results;
}

String? isHuman(bool isHuman) => isHuman ? 'human' : null;
