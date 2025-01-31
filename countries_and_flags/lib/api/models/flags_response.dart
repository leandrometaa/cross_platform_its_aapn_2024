import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:countries_and_flags/api/models/country_api_models.dart';
import 'package:countries_and_flags/api/models/flags_api_model.dart';

part 'flags_response.freezed.dart';

@freezed
class FlagsResponse with _$FlagsResponse {
  const factory FlagsResponse({
    CountryApiModels? country,
    required FlagsApiModels flags,
  }) = _FlagsResponse;

  factory FlagsResponse.fromJson(Map<String, dynamic> json) {
    return FlagsResponse(
      country: json['name'] != null
          ? CountryApiModels.fromJson(json['name'])
          : const CountryApiModels(common: 'Unknown'),
      flags: FlagsApiModels.fromJson(json['flags']),
    );
  }
}
