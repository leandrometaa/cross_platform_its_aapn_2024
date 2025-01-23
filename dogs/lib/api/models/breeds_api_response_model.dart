import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:rick_and_morty/json.dart';

part 'breeds_api_response_model.freezed.dart';
part 'breeds_api_response_model.g.dart';

@freezed
class BreedsApiResponseModel with _$BreedsApiResponseModel {
  const factory BreedsApiResponseModel({
    required Json message,
  }) = _BreedsApiResponseModel;
  factory BreedsApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BreedsApiResponseModelFromJson(json);
}
