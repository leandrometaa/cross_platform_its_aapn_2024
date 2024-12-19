import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/provider/pokemon.provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final pokemonListAsync = ref.watch(productsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokédex'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              context.push('/saved-pokemons');
            },
          ),
        ],
      ),
      body: pokemonListAsync.when(
        data: (pokemonList) {
          if (pokemonList.isEmpty) {
            return const Center(
              child: Text('Nessun Pokémon trovato!'),
            );
          }

          return ListView.builder(
            itemCount: pokemonList.length,
            itemBuilder: (context, index) {
              final pokemon = pokemonList[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text(pokemon.id.toString()),
                ),
                title: Text(pokemon.name),
                onTap: () {
                  context.push('/pokemon-detail/${pokemon.id}');
                },
              );
            },
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
