// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_list_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokeListApiModelImpl _$$PokeListApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokeListApiModelImpl(
      (json['results'] as List<dynamic>)
          .map((e) => PokeSnippetApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokeListApiModelImplToJson(
        _$PokeListApiModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
