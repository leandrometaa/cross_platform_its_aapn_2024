import 'package:dogs/src/providers/dogs_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final results = ref.watch(dogsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("dogs"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed("filter");
            },
            icon: const Icon(Icons.filter_alt),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(96),
        child: switch (results) {
          AsyncData(:final value) => GridView.count(
              crossAxisCount: 3,
              children: [
                for (final dog in value) //
                  Image.network(dog)
              ],
            ),
          AsyncError() => const Center(
              child: Text("errore"),
            ),
          _ => const Center(
              child: CircularProgressIndicator(),
            )
        },
      ),
    );
  }
}
