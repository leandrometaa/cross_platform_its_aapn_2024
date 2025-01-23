import 'package:rick_and_morty/api/models/breeds_api_response_model.dart';

typedef DogImageUrl = String;

extension BreedsApiResponseModelExt on BreedsApiResponseModel {
  List<String> get breeds {
    return [
      for (final MapEntry(:key) in message.entries) //
        key,
    ];
  }
}
