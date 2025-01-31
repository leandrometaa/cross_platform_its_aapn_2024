import 'package:countries_and_flags/src/pages/detail_page.dart';
import 'package:countries_and_flags/src/providers/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Favorites')),
      body: favorites.isEmpty
          ? Center(child: Text('No favorites yet!'))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final flag = favorites[index];

                return ListTile(
                  leading: Image.network(flag.flags.png, width: 50),
                  title: Text(flag.country!.common),
                  trailing: IconButton(
                    icon: Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {
                      ref.read(favoritesProvider.notifier).toggleFavorite(flag);
                    },
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(flag: flag),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
