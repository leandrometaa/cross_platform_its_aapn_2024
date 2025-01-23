// YOUR MODEL HERE

import 'package:rick_and_morty/api/models/breeds_api_response_model.dart';

extension BreedsApiResponseModelExt on BreedsApiResponseModel {
  List<String> get breeds {
    return [
      for (final MapEntry(:key) in message.entries) //
        key,
    ];
  }
}
