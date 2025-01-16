import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/providers/saved_poke_notifier.dart';

class SavedPokePage extends ConsumerWidget {
  const SavedPokePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(savedPokeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ecco le tue annotazioni"),
      ),
      body: ListView(
        children: [
          for (final element in list)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(element.name),
                    trailing: IconButton(
                      onPressed: () {
                        ref
                            .read(savedPokeNotifierProvider.notifier)
                            .remove(element);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 48),
                      Text(element.note),
                    ],
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
