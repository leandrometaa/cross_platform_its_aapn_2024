import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/provider/saved.pokemons.provider.dart';

class SavePokemonPage extends ConsumerStatefulWidget {
  final int pokemonId;
  const SavePokemonPage({super.key, required this.pokemonId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SavePokemonPageState();
}

class _SavePokemonPageState extends ConsumerState<SavePokemonPage> {
  final _noteController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Salva Pokémon')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _noteController,
                decoration: const InputDecoration(labelText: 'Nota'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'La nota non può essere vuota';
                  }
                  if (value.length < 20) {
                    return 'La nota deve contenere almeno 20 caratteri';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    final newPokemon = {
                      'id': widget.pokemonId.toString(),
                      'note': _noteController.text,
                    };

                    ref
                        .read(savedPokemonsProvider.notifier)
                        .state
                        .add(newPokemon);

                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Pokémon salvato con successo')),
                    );
                  }
                },
                child: const Text('Salva'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
