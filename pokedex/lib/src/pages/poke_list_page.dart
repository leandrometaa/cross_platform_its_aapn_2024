import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/providers/poke_snippet_provider.dart';

class PokeListPage extends ConsumerWidget {
  const PokeListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(pokeSnippetProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Pokedex!"),
          actions: [
            IconButton(
              onPressed: () {
                // TODO
              },
              icon: const Icon(Icons.heart_broken),
            )
          ],
        ),
        body: switch (list) {
          AsyncData(:final value) => ListView(
              children: [
                for (final element in value)
                  ListTile(
                    leading: Text("${element.id}"),
                    title: Text(element.name),
                    trailing: IconButton(
                      onPressed: () {
                        // TODO
                      },
                      icon: const Icon(Icons.save),
                    ),
                  ),
              ],
            ),
          AsyncError() => const Center(
              child: Text("uh oh...."),
            ),
          _ => const Center(
              child: CircularProgressIndicator(),
            )
        });
  }
}
