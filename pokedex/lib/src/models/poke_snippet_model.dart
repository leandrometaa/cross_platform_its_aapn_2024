import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex/api/models/poke_snippet_api_model.dart';

part 'poke_snippet_model.freezed.dart';

@freezed
class PokeSnippetModel with _$PokeSnippetModel {
  const factory PokeSnippetModel({
    required int id,
    required String name,
  }) = _PokeSnippetModel;
}

extension PokeListSnippetApiModelAdapter on List<PokeSnippetApiModel> {
  List<PokeSnippetModel> toModels() {
    return [
      for (final model in this) //
        model.toModel(),
    ];
  }
}

extension PokeSnippetApiModelAdapter on PokeSnippetApiModel {
  PokeSnippetModel toModel() {
    if (!url.startsWith("http")) throw const FormatException();
    final split = url.split('/');
    final [..., id, _] = split;
    final integer = int.parse(id);
    return PokeSnippetModel(
      id: integer,
      name: name,
    );
  }
}
