import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/api/rick_and_morty_api.dart';
import 'package:rick_and_morty/src/models/character_model.dart';
import 'package:rick_and_morty/src/providers/human_only_provider.dart';
import 'package:rick_and_morty/src/providers/query_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_provider.g.dart';

@riverpod
FutureOr<List<CharacterModel>> search(Ref ref) async {
  final query = ref.watch(queryProvider);
  final human = ref.watch(humanOnlyProvider);
  final api = ref.watch(rickAndMortyApiProvider);

  final species = isHuman(human);
  final queryParams = {
    if (query != null) 'name': query,
    if (species != null) 'species': species,
  };
  final result = await api.list(queryParams);
  return result.results;
}

String? isHuman(bool isHuman) => isHuman ? 'human' : null;
