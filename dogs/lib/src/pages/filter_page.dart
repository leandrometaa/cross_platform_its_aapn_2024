import 'package:dogs/src/notifiers/breed_filter_notifier.dart';
import 'package:dogs/src/providers/breeds_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterPage extends ConsumerWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final breeds = ref.watch(breedsProvider);

    return Scaffold(
      appBar: AppBar(),
      body: switch (breeds) {
        AsyncData(:final value) => ListView(
            children: [
              for (final breed in value) //
                Container()
            ],
          ),
      },
    );
  }
}
