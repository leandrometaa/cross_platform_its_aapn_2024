import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rick_and_morty/src/providers/search_provider.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final form = FormGroup({'query': FormControl<String>(value: '')});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rick and morty!"),
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed('filters');
            },
            icon: const Icon(Icons.filter_list),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 96,
        ),
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ReactiveTextField(
                formControlName: 'query',
                decoration: const InputDecoration(
                  hintText: "Rick...",
                  label: Text("Search your favorite character!"),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              ReactiveFormConsumer(
                builder: (context, form, child) {
                  final String query = this.form.control('query').value;
                  final results = ref.watch(searchProvider(query));

                  return Expanded(
                    child: switch (results) {
                      AsyncData(:final value) => ListView(
                          children: [
                            for (final result in value)
                              Card(
                                margin: const EdgeInsets.all(8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(result.name),
                                    const SizedBox(height: 12),
                                    Image.network(result.image),
                                  ],
                                ),
                              )
                          ],
                        ),
                      AsyncError() => const Center(
                          child: Text("you're out of the universe"),
                        ),
                      _ => const Center(
                          child: CircularProgressIndicator(),
                        )
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
