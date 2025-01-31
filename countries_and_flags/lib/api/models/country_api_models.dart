import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_api_models.freezed.dart';
part 'country_api_models.g.dart';

@freezed
class CountryApiModels with _$CountryApiModels {
  const factory CountryApiModels({
    required String common,
  }) = _CountryApiModels;

  factory CountryApiModels.fromJson(Map<String, dynamic> json) =>
      _$CountryApiModelsFromJson(json);
}
