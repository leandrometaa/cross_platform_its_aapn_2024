import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.api.models.freezed.dart';
part 'pokemon.api.models.g.dart';

@freezed
class PokemonApiModels with _$PokemonApiModels {
  const factory PokemonApiModels({
    required int id,
    required String name,
    required String imageUrl,
    required int height,
    required int weight,
  }) = _PokemonApiModels;

  factory PokemonApiModels.fromJson(Map<String, dynamic> json) =>
      _$PokemonApiModelsFromJson(json);
}
