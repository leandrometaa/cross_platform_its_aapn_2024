import 'package:countries_and_flags/api/models/flags_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesNotifier extends StateNotifier<List<FlagsResponse>> {
  FavoritesNotifier() : super([]);

  void toggleFavorite(FlagsResponse flag) {
    if (state.contains(flag)) {
      state = state.where((item) => item != flag).toList();
    } else {
      state = [...state, flag];
    }
  }

  bool contains(FlagsResponse flag) {
    return state.contains(flag);
  }
}

final favoritesProvider =
    StateNotifierProvider<FavoritesNotifier, List<FlagsResponse>>((ref) {
  return FavoritesNotifier();
});
