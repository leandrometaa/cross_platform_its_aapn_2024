import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'dog_by_breed_response_model.freezed.dart';
part 'dog_by_breed_response_model.g.dart';

@freezed
class DogByBreedResponseModel with _$DogByBreedResponseModel {
  const factory DogByBreedResponseModel({
    required List<String> message,
  }) = _DogByBreedResponseModel;
  factory DogByBreedResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DogByBreedResponseModelFromJson(json);
}
