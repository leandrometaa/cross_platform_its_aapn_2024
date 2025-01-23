import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:rick_and_morty/src/models/gender.dart';
import 'package:rick_and_morty/src/models/status.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel({
    required Gender? gender,
    required Status? status,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);

  factory FilterModel.empty() => const FilterModel(
        gender: null,
        status: null,
      );
}
