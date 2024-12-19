// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonResponseModelImpl _$$PokemonResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PokemonResponseModelImpl',
      json,
      ($checkedConvert) {
        final val = _$PokemonResponseModelImpl(
          pokemon: $checkedConvert(
              'pokemon',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      PokemonApiModels.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PokemonResponseModelImplToJson(
        _$PokemonResponseModelImpl instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon.map((e) => e.toJson()).toList(),
    };
