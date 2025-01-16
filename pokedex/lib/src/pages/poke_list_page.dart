import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/pages/save_poke_page.dart';
import 'package:pokedex/src/providers/poke_snippet_provider.dart';
import 'package:pokedex/src/providers/saved_poke_notifier.dart';

class PokeListPage extends ConsumerWidget {
  const PokeListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(pokeSnippetProvider);
    final savedLength = ref.watch(
      savedPokeNotifierProvider.select((value) => value.length),
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text("Pokedex!"),
          actions: [
            IconButton(
              onPressed: () {
                context.push("/saved");
              },
              icon: Badge.count(
                count: savedLength,
                child: const Icon(Icons.ac_unit),
              ),
            ),
            const SizedBox(width: 24),
          ],
        ),
        body: switch (list) {
          AsyncData(:final value) => ListView(
              children: [
                for (final element in value)
                  ListTile(
                    onTap: () {
                      context.push("/${element.id}");
                    },
                    leading: Text("${element.id}"),
                    title: Text(element.name),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog.fullscreen(
                              child: SavePokePage(name: element.name),
                            );
                          },
                        );
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
