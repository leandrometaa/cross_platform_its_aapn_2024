import 'package:freezed_annotation/freezed_annotation.dart';
part 'flags_api_model.freezed.dart';
part 'flags_api_model.g.dart';

@freezed
class FlagsApiModels with _$FlagsApiModels {
  const factory FlagsApiModels({
    required String png,
  }) = _FlagsApiModels;

  factory FlagsApiModels.fromJson(Map<String, dynamic> json) =>
      _$FlagsApiModelsFromJson(json);
}
