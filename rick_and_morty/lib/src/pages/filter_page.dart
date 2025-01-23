import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:rick_and_morty/src/models/gender.dart';
import 'package:rick_and_morty/src/models/status.dart';
import 'package:rick_and_morty/src/providers/filters_notifier.dart';

class FilterPage extends ConsumerWidget {
  FilterPage({super.key});

  final form = FormGroup({
    "gender": FormControl<Gender>(value: null),
    "status": FormControl<Status>(value: null),
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filtra i personaggi!"),
      ),
      body: ReactiveForm(
        formGroup: form,
        child: Column(
          children: [
            const Row(
              children: [
                Expanded(child: GenderFiltersWidget()),
                Expanded(child: StatusFiltersWidget()),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                ref //
                    .read(filtersNotifierProvider.notifier)
                    .update(form.value);
              },
              child: const Text("Aggiorna"),
            )
          ],
        ),
      ),
    );
  }
}

class StatusFiltersWidget extends StatelessWidget {
  const StatusFiltersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReactiveRadioListTile<Status?>(
          value: Status.alive,
          formControlName: "status",
          title: const Text("Alive?"),
        ),
        ReactiveRadioListTile(
          value: Status.dead,
          formControlName: "status",
          title: const Text("Dead?"),
        ),
        ReactiveRadioListTile(
          value: Status.unknown,
          formControlName: "status",
          title: const Text("Unknown?"),
        ),
      ],
    );
  }
}

class GenderFiltersWidget extends StatelessWidget {
  const GenderFiltersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReactiveRadioListTile(
          value: Gender.female,
          formControlName: "gender",
          title: const Text("Female?"),
        ),
        ReactiveRadioListTile(
          value: Gender.male,
          formControlName: "gender",
          title: const Text("Male?"),
        ),
        ReactiveRadioListTile(
          value: Gender.genderless,
          formControlName: "gender",
          title: const Text("Genderless?"),
        ),
        ReactiveRadioListTile(
          value: Gender.unknown,
          formControlName: "gender",
          title: const Text("Unknown?"),
        ),
      ],
    );
  }
}
