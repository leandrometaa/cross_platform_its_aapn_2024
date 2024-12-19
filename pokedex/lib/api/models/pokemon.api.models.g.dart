// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.api.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonApiModelsImpl _$$PokemonApiModelsImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PokemonApiModelsImpl',
      json,
      ($checkedConvert) {
        final val = _$PokemonApiModelsImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          imageUrl: $checkedConvert('imageUrl', (v) => v as String),
          height: $checkedConvert('height', (v) => (v as num).toInt()),
          weight: $checkedConvert('weight', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PokemonApiModelsImplToJson(
        _$PokemonApiModelsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'height': instance.height,
      'weight': instance.weight,
    };
