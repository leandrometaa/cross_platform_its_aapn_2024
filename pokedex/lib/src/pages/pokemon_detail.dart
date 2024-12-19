import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/provider/pokemon.provider.dart';

class PokemonDetailPage extends ConsumerWidget {
  final int pokemonId;
  const PokemonDetailPage({super.key, required this.pokemonId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsync = ref.watch(pokemonDetailProvider(pokemonId));

    return Scaffold(
      appBar: AppBar(title: const Text('Dettaglio Pokémon')),
      body: pokemonAsync.when(
        data: (pokemon) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Image.network(pokemon.imageUrl),
                Text(pokemon.name),
                Text('ID: ${pokemon.id}'),
                Text('Altezza: ${pokemon.height} decimetri'),
                Text('Peso: ${pokemon.weight} hectogrammi'),
                ElevatedButton(
                  onPressed: () {
                    context.push('/save-pokemon/${pokemon.id}');
                  },
                  child: const Text('Salva e aggiungi nota'),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('Errore nel caricamento: $error'),
        ),
      ),
    );
  }
}
