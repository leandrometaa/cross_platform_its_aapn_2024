import 'package:countries_and_flags/api/models/flags_response.dart';
import 'package:countries_and_flags/src/providers/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsPage extends ConsumerWidget {
  final FlagsResponse flag;

  const DetailsPage({super.key, required this.flag});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);
    final isFavorite = favorites.contains(flag);

    return Scaffold(
      appBar: AppBar(
        title: Text(flag.country!.common),
        actions: [
          IconButton(
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.white),
            onPressed: () {
              ref.read(favoritesProvider.notifier).toggleFavorite(flag);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(flag.flags.png, height: 250),
            const SizedBox(height: 20),
            Text(
              flag.country!.common,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            IconButton(
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey),
              iconSize: 40,
              onPressed: () {
                ref.read(favoritesProvider.notifier).toggleFavorite(flag);
              },
            ),
          ],
        ),
      ),
    );
  }
}
