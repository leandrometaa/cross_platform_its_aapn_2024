import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef SavedPokemon = Map<String, String>;
final savedPokemonsProvider = StateProvider<List<SavedPokemon>>((ref) => []);
