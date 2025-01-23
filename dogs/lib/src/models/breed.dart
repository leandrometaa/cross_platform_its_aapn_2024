import 'package:dogs/api/models/breeds_api_response_model.dart';

typedef Breed = String;

extension BreedsApiResponseModelExt on BreedsApiResponseModel {
  List<Breed> get breeds {
    return [
      for (final MapEntry(:key) in message.entries) //
        key,
    ];
  }
}
