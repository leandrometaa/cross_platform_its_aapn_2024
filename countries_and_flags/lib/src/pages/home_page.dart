import 'package:countries_and_flags/src/pages/detail_page.dart';
import 'package:countries_and_flags/src/pages/favorites_page.dart';
import 'package:countries_and_flags/src/providers/favorite_provider.dart';
import 'package:countries_and_flags/src/providers/flags_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final flagsState = ref.watch(flagsNotifierProvider);
    final favoriteProvider = ref.watch(favoritesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flags & Countries'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoritesPage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value.toLowerCase();
                });
              },
              decoration: InputDecoration(
                hintText: 'NIG..',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: flagsState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, _) => Center(child: Text('Error: $err')),
              data: (flags) {
                final filteredFlags = flags.where((flag) {
                  return flag.country!.common
                      .toLowerCase()
                      .contains(searchQuery);
                }).toList();

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 4 / 2,
                    ),
                    itemCount: filteredFlags.length,
                    itemBuilder: (context, index) {
                      final flag = filteredFlags[index];
                      final isFavorite = favoriteProvider.contains(flag);

                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(flag: flag),
                            ),
                          );
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                  size: 20,
                                ),
                                onPressed: () {
                                  ref
                                      .read(favoritesProvider.notifier)
                                      .toggleFavorite(flag);
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  flag.flags.png,
                                  width: 250,
                                  height: 230,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                flag.country!.common,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
