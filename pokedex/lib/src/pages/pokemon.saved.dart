import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/provider/saved.pokemons.provider.dart';

class SavedPokemonsPage extends ConsumerWidget {
  const SavedPokemonsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedPokemons = ref.watch(savedPokemonsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokémon Salvati'),
      ),
      body: savedPokemons.isEmpty
          ? const Center(child: Text('Non hai salvato nessun Pokémon.'))
          : ListView.builder(
              itemCount: savedPokemons.length,
              itemBuilder: (context, index) {
                final pokemon = savedPokemons[index];
                return ListTile(
                  title: Text('ID: ${pokemon['id']}'),
                  subtitle: Text('Nota: ${pokemon['note']}'),
                );
              },
            ),
    );
  }
}
