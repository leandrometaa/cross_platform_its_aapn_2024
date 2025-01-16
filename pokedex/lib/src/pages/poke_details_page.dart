import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/models/poke_model.dart';
import 'package:pokedex/src/pages/save_poke_page.dart';
import 'package:pokedex/src/providers/poke_details_provider.dart';

class PokeDetailsPage extends ConsumerWidget {
  const PokeDetailsPage({
    required this.id,
    super.key,
  });
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemon = ref.watch(pokeDetailsProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: switch (pokemon) {
          AsyncData(:final value) => Text("${value.id} - ${value.name}"),
          AsyncError() => const Text("Attenzione!"),
          _ => const Text("Caricamento ...")
        },
        actions: [
          if (pokemon case AsyncData(:final value))
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog.fullscreen(
                      child: SavePokePage(name: value.name),
                    );
                  },
                );
              },
              icon: const Icon(Icons.save),
            )
        ],
      ),
      body: switch (pokemon) {
        AsyncData(:final value) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(value.image),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Peso: ${value.weight}"),
                  Text("Altezza: ${value.height}")
                ],
              ),
            ],
          ),
        AsyncError() => const Center(
            child: Text("S'è rotto tutto"),
          ),
        _ => const Center(
            child: CircularProgressIndicator(),
          ),
      },
    );
  }
}
