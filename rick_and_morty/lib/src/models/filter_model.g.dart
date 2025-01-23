// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterModelImpl _$$FilterModelImplFromJson(Map<String, dynamic> json) =>
    _$FilterModelImpl(
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$FilterModelImplToJson(_$FilterModelImpl instance) =>
    <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender],
      'status': _$StatusEnumMap[instance.status],
    };

const _$GenderEnumMap = {
  Gender.female: 'female',
  Gender.male: 'male',
  Gender.genderless: 'genderless',
  Gender.unknown: 'unknown',
};

const _$StatusEnumMap = {
  Status.alive: 'alive',
  Status.dead: 'dead',
  Status.unknown: 'unknown',
};
