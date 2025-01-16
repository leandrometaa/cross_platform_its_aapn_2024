import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/providers/saved_poke_notifier.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SavePokePage extends ConsumerWidget {
  SavePokePage({
    required this.name,
    super.key,
  });
  final String name;

  final form = FormGroup({
    'note': FormControl<String>(
      value: '',
      validators: [const RequiredValidator(), const MinLengthValidator(20)],
    ),
  });

  String get note => form.control('note').value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cosa ne pensi di $name?"),
      ),
      body: ReactiveForm(
        formGroup: form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReactiveTextField(
              formControlName: 'note',
            ),
            ReactiveFormConsumer(
              builder: (context, form, _) => ElevatedButton(
                onPressed: form.valid
                    ? () {
                        ref
                            .read(savedPokeNotifierProvider.notifier)
                            .add(name: name, note: note);
                        context.pop();
                      }
                    : null,
                child: const Text("Annotalo!"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
