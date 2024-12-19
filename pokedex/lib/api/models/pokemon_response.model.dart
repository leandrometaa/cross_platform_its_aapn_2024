import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/api/models/pokemon.api.models.dart';

part 'pokemon_response.model.freezed.dart';
part 'pokemon_response.model.g.dart';

@freezed
class PokemonResponseModel with _$PokemonResponseModel {
  const factory PokemonResponseModel({
    required List<PokemonApiModels> pokemon,
  }) = _PokemonResponseModel;
  factory PokemonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseModelFromJson(json);
}
