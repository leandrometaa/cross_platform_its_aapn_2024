import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/pokemon.dart';

void main() {
  runApp(const ProviderScope(child: Pokemon()));
}
